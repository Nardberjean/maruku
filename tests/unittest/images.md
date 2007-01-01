Write a comment abouth the test here.
*** Parameters: ***
{}
*** Markdown input: ***

This page does not uilizes ![Cascading Style Sheets](http://jigsaw.w3.org/css-validator/images/vcss)


Please mouseover to see the title: ![Cascading Style Sheets](http://jigsaw.w3.org/css-validator/images/vcss "Title ok!")

Please mouseover to see the title: ![Cascading Style Sheets](http://jigsaw.w3.org/css-validator/images/vcss 'Title ok!')


I'll say it one more time: this page does not use ![Cascading Style Sheets] [css]

This is double size: ![Cascading Style Sheets] [css2]



[css]: http://jigsaw.w3.org/css-validator/images/vcss "Optional title attribute"

[css2]: http://jigsaw.w3.org/css-validator/images/vcss "Optional title attribute" class=external
   style="border:0;width:188px;height:131px"



*** Output of inspect ***
md_el(:document,[
	md_el(:paragraph,[
		"This page does not uilizes ",
		md_el(:image,[], {:ref_id=>"dummy_0"})
	]),
	md_el(:paragraph,[
		"Please mouseover to see the title: ",
		md_el(:image,[], {:ref_id=>"dummy_1"})
	]),
	md_el(:paragraph,[
		"Please mouseover to see the title: ",
		md_el(:image,[], {:ref_id=>"dummy_2"})
	]),
	md_el(:paragraph,[
		"I'll say it one more time: this page does not use ",
		md_el(:image,[], {:ref_id=>"css"})
	]),
	md_el(:paragraph,[
		"This is double size: ",
		md_el(:image,[], {:ref_id=>"css2"})
	])
])
*** Output of to_html ***
<p>This page does not uilizes <img src='http://jigsaw.w3.org/css-validator/images/vcss'
      /></p
    ><p>Please mouseover to see the title: <img title='Title ok!' src='http://jigsaw.w3.org/css-validator/images/vcss'
      /></p
    ><p>Please mouseover to see the title: <img title='Title ok!' src='http://jigsaw.w3.org/css-validator/images/vcss'
      /></p
    ><p>I&apos;ll say it one more time: this page does not use <img title='Optional title attribute' src='http://jigsaw.w3.org/css-validator/images/vcss'
      /></p
    ><p>This is double size: <img class='external' title='Optional title attribute' src='http://jigsaw.w3.org/css-validator/images/vcss' style='border:0;width:188px;height:131px'
      /></p
  >
*** Output of to_latex ***
This page does not uilizes {\bf Images not supported yet (\char104\char116\char116\char112\char58\char47\char47\char106\char105\char103\char115\char97\char119\char46\char119\char51\char46\char111\char114\char103\char47\char99\char115\char115\char45\char118\char97\char108\char105\char100\char97\char116\char111\char114\char47\char105\char109\char97\char103\char101\char115\char47\char118\char99\char115\char115)}

Please mouseover to see the title: {\bf Images not supported yet (\char104\char116\char116\char112\char58\char47\char47\char106\char105\char103\char115\char97\char119\char46\char119\char51\char46\char111\char114\char103\char47\char99\char115\char115\char45\char118\char97\char108\char105\char100\char97\char116\char111\char114\char47\char105\char109\char97\char103\char101\char115\char47\char118\char99\char115\char115)}

Please mouseover to see the title: {\bf Images not supported yet (\char104\char116\char116\char112\char58\char47\char47\char106\char105\char103\char115\char97\char119\char46\char119\char51\char46\char111\char114\char103\char47\char99\char115\char115\char45\char118\char97\char108\char105\char100\char97\char116\char111\char114\char47\char105\char109\char97\char103\char101\char115\char47\char118\char99\char115\char115)}

I'll say it one more time: this page does not use {\bf Images not supported yet (\char104\char116\char116\char112\char58\char47\char47\char106\char105\char103\char115\char97\char119\char46\char119\char51\char46\char111\char114\char103\char47\char99\char115\char115\char45\char118\char97\char108\char105\char100\char97\char116\char111\char114\char47\char105\char109\char97\char103\char101\char115\char47\char118\char99\char115\char115)}

This is double size: {\bf Images not supported yet (\char104\char116\char116\char112\char58\char47\char47\char106\char105\char103\char115\char97\char119\char46\char119\char51\char46\char111\char114\char103\char47\char99\char115\char115\char45\char118\char97\char108\char105\char100\char97\char116\char111\char114\char47\char105\char109\char97\char103\char101\char115\char47\char118\char99\char115\char115)}


*** Output of to_s ***
This page does not uilizes Please mouseover to see the title: Please mouseover to see the title: I'll say it one more time: this page does not use This is double size: 
*** Output of to_md ***
This page does not uilizes Please mouseover to see the title: Please mouseover to see the title: I'll say it one more time: this page does not use This is double size: 
*** EOF ***




Failed tests:   [] 
And the following are the actual outputs for methods:
   [:inspect, :to_html, :to_latex, :to_s, :to_md]:


*** Output of inspect ***
md_el(:document,[
	md_el(:paragraph,[
		"This page does not uilizes ",
		md_el(:image,[], {:ref_id=>"dummy_0"})
	]),
	md_el(:paragraph,[
		"Please mouseover to see the title: ",
		md_el(:image,[], {:ref_id=>"dummy_1"})
	]),
	md_el(:paragraph,[
		"Please mouseover to see the title: ",
		md_el(:image,[], {:ref_id=>"dummy_2"})
	]),
	md_el(:paragraph,[
		"I'll say it one more time: this page does not use ",
		md_el(:image,[], {:ref_id=>"css"})
	]),
	md_el(:paragraph,[
		"This is double size: ",
		md_el(:image,[], {:ref_id=>"css2"})
	])
])
*** Output of to_html ***
<p>This page does not uilizes <img src='http://jigsaw.w3.org/css-validator/images/vcss'
      /></p
    ><p>Please mouseover to see the title: <img title='Title ok!' src='http://jigsaw.w3.org/css-validator/images/vcss'
      /></p
    ><p>Please mouseover to see the title: <img title='Title ok!' src='http://jigsaw.w3.org/css-validator/images/vcss'
      /></p
    ><p>I&apos;ll say it one more time: this page does not use <img title='Optional title attribute' src='http://jigsaw.w3.org/css-validator/images/vcss'
      /></p
    ><p>This is double size: <img class='external' title='Optional title attribute' src='http://jigsaw.w3.org/css-validator/images/vcss' style='border:0;width:188px;height:131px'
      /></p
  >
*** Output of to_latex ***
This page does not uilizes {\bf Images not supported yet (\char104\char116\char116\char112\char58\char47\char47\char106\char105\char103\char115\char97\char119\char46\char119\char51\char46\char111\char114\char103\char47\char99\char115\char115\char45\char118\char97\char108\char105\char100\char97\char116\char111\char114\char47\char105\char109\char97\char103\char101\char115\char47\char118\char99\char115\char115)}

Please mouseover to see the title: {\bf Images not supported yet (\char104\char116\char116\char112\char58\char47\char47\char106\char105\char103\char115\char97\char119\char46\char119\char51\char46\char111\char114\char103\char47\char99\char115\char115\char45\char118\char97\char108\char105\char100\char97\char116\char111\char114\char47\char105\char109\char97\char103\char101\char115\char47\char118\char99\char115\char115)}

Please mouseover to see the title: {\bf Images not supported yet (\char104\char116\char116\char112\char58\char47\char47\char106\char105\char103\char115\char97\char119\char46\char119\char51\char46\char111\char114\char103\char47\char99\char115\char115\char45\char118\char97\char108\char105\char100\char97\char116\char111\char114\char47\char105\char109\char97\char103\char101\char115\char47\char118\char99\char115\char115)}

I'll say it one more time: this page does not use {\bf Images not supported yet (\char104\char116\char116\char112\char58\char47\char47\char106\char105\char103\char115\char97\char119\char46\char119\char51\char46\char111\char114\char103\char47\char99\char115\char115\char45\char118\char97\char108\char105\char100\char97\char116\char111\char114\char47\char105\char109\char97\char103\char101\char115\char47\char118\char99\char115\char115)}

This is double size: {\bf Images not supported yet (\char104\char116\char116\char112\char58\char47\char47\char106\char105\char103\char115\char97\char119\char46\char119\char51\char46\char111\char114\char103\char47\char99\char115\char115\char45\char118\char97\char108\char105\char100\char97\char116\char111\char114\char47\char105\char109\char97\char103\char101\char115\char47\char118\char99\char115\char115)}


*** Output of to_s ***
This page does not uilizes Please mouseover to see the title: Please mouseover to see the title: I'll say it one more time: this page does not use This is double size: 
*** Output of to_md ***
This page does not uilizes Please mouseover to see the title: Please mouseover to see the title: I'll say it one more time: this page does not use This is double size: 
*** Output of Markdown.pl ***
<p>This page does not uilizes <img src="http://jigsaw.w3.org/css-validator/images/vcss" alt="Cascading Style Sheets" title="" /></p>

<p>Please mouseover to see the title: <img src="http://jigsaw.w3.org/css-validator/images/vcss" alt="Cascading Style Sheets" title="Title ok!" /></p>

<p>Please mouseover to see the title: <img src="http://jigsaw.w3.org/css-validator/images/vcss" alt="Cascading Style Sheets" title="Title ok!" /></p>

<p>I'll say it one more time: this page does not use <img src="http://jigsaw.w3.org/css-validator/images/vcss" alt="Cascading Style Sheets" title="Optional title attribute" /></p>

<p>This is double size: ![Cascading Style Sheets] [css2]</p>

<p>[css2]: http://jigsaw.w3.org/css-validator/images/vcss "Optional title attribute" class=external
   style="border:0;width:188px;height:131px"</p>

*** Output of Markdown.pl (parsed) ***
<p>This page does not uilizes <img title='' src='http://jigsaw.w3.org/css-validator/images/vcss' alt='Cascading Style Sheets'
      /></p
    ><p>Please mouseover to see the title: <img title='Title ok!' src='http://jigsaw.w3.org/css-validator/images/vcss' alt='Cascading Style Sheets'
      /></p
    ><p>Please mouseover to see the title: <img title='Title ok!' src='http://jigsaw.w3.org/css-validator/images/vcss' alt='Cascading Style Sheets'
      /></p
    ><p>I'll say it one more time: this page does not use <img title='Optional title attribute' src='http://jigsaw.w3.org/css-validator/images/vcss' alt='Cascading Style Sheets'
      /></p
    ><p>This is double size: ![Cascading Style Sheets] [css2]</p
    ><p>[css2]: http://jigsaw.w3.org/css-validator/images/vcss "Optional title attribute" class=external
 style="border:0;width:188px;height:131px"</p
  >