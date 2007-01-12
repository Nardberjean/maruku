
=begin maruku_doc
Attribute: html_math_engine
Scope: document, element
Output: html
Summary: Select the rendering engine for math.
Default: <?mrk Globals[:html_math_engine].to_s ?>

Select the rendering engine for math.

If you want to use your engine `foo`, then set:

	HTML math engine: foo
{:lang=markdown}

and then implement two functions:

	def to_html_inline_math_foo
		# You can: either return a REXML::Element
		#    return Element.new 'div'    
		# or return an empty array on error
		#    return []  
		# or have a string parsed by REXML:
		tex = self.math
		tex.gsub!('&','&amp;')
		mathml = "<code>#{tex}</code>"
		return Document.new(mathml).root
	end

	def to_html_equation_foo
		# same thing
		...
	end
{:lang=ruby}

=end

module MaRuKu; module Out; module HTML

	def to_html_inline_math
		s = get_setting(:html_math_engine)
		method = "to_html_inline_math_#{s}".to_sym
		if self.respond_to? method
			self.send method
		else 
			puts "A method called #{method} should be defined."
			return []
		end
	end

	def to_html_equation
		s = get_setting(:html_math_engine)
		method = "to_html_equation_#{s}".to_sym
		if self.respond_to? method
			self.send method
		else 
			puts "A method called #{method} should be defined."
			return []
		end
	end
	
	def convert_to_mathml_ritex(tex)
		begin
			require 'rubygems'
			require 'ritex'
			$ritex_parser ||= Ritex::Parser.new
			
			mathml =  $ritex_parser.parse(tex.strip)
			doc = Document.new(mathml, {:respect_whitespace =>:all}).root
			return doc
		rescue LoadError => e
			maruku_error "Could not load package 'ritex'.\n"+
			"Please install it using:\n"+
			"   $ gem install ritex\n\n"+e.inspect
		rescue Racc::ParseError => e
			maruku_error "Could not parse TeX: \n#{tex}"+
				"\n\n #{e.inspect}"
		end
		nil
	end
	
	def to_html_inline_math_ritex
		tex = self.math
		mathml = convert_to_mathml_ritex(tex)
		return mathml || []
	end
	
	def to_html_equation_ritex
		tex = self.math
		mathml = convert_to_mathml_ritex(tex)
		return mathml || []
	end

	def convert_to_mathml_itex2mml(tex, method)
		begin
	 		require 'itextomml'
			$itex2mml_parser ||=  Itex2MML::Parser.new
			
			mathml =  $itex2mml_parser.send(method, tex)
			doc = Document.new(mathml, {:respect_whitespace =>:all}).root
			return doc
		rescue LoadError => e
			maruku_error "Could not load package 'ritex'.\n"+
			"Please install it using:\n"+
			"   $ gem install ritex\n\n"+e.inspect
		rescue Exception => e
			maruku_error "Could not produce MathML TeX: \n#{tex}"+
				"\n\n #{e.inspect}"
		end
		nil
	end
	
	def to_html_inline_math_itex2mml
		convert_to_mathml_itex2mml(self.math, :inline_filter) || []
	end
	
	def to_html_equation_itex2mml
		convert_to_mathml_itex2mml(self.math, :block_filter) || []
	end

end end end