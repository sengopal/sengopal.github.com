---
layout: post
title: CSS learning and notes
type: post
tags:
 - design
published: true
meta:
categories:
 - blog
---
The following are some of the important points that i had gathered during my learning of CSS and HTML markup. It also contains the important factors to consider when converting a given PSD or image into a good HTML markup and CSS.

###Slicing techniques
1. Do not slice the logo
2. Figure out the gradient for repeating along the x -axis
3. Dont start with the slice tool from the toolbar
4. Always design with a wrapper div - for a row or a column - to be enclosed as a container tag
5. Decide upon only one type of slicing for a given layout - for the wrapper divs and then perform the slicing 
6. First horizontal - because the flow goes from right to left
7. After selecting the slice, divide the slice and give the number of dividers you would need
8. Save for Web and Devices - Gif and PNG for transparent ones
9. Quality generally set up as 75-85%

###Remember
1. height, width, padding, margin, float - main important properties
2. use the following (or use a reset)
{% highlight css %}
	body{
		padding:0;
		margin:0;
	}
{% endhighlight %}

3. Give Wrapper `margin:auto;` to make the whole container centered
4. Give fixed width and height to get the margin auto to work properly
5. Div dimensions: width + margin + padding + border
6. Whenever u are adding a padding or margin, adjust the width or height appropriately
7. Use `margin:auto;` to center the div within the container
8. `#nav ul{ margin:0; padding:0;}` - remember for every UL block or use a reset
9. Always use `ul{list-style-type: none;}`
10. Give `li{display:block}` and provide width & height to get a BUTTON look and feel
11. For vertical nav bar, when absolute position is used, use negative margin-left and margin-top of size half of the width and height of the div.
12. always the target browsers and supported resolutions needs to be decided

###Media Queries
1. Change float to normal using the height/width/float properties for changing screen size
2. Always use `margin,padding:0` - for reset
3. Types of layouts - pure fluid / pure display oriented / hybrid
	* Fluid Layout
		1. system of relative layout instead of absolute pixels
		2. height/width - only in percentages
	* Adaptive Layout
		1. using the @media tags
	* Responsive Layout
		1. Mix of Fluid and adaptive layouts. PERCENTAGE + Media Tags
4. New way of setting the media value
	{% highlight html %}
		<meta name="viewport" content="initial-scale=1,width=device-width">
	{% endhighlight %}
5. Media query representation
	`@media screen and (max-width: 980px){}`
6. Always create the smallest resolution first
7. Try to use different images with different srcs to cater to different sizes

###Types of Selectors
1. Tag
2. Class
3. Pseudo-element \[first-line, first-character\] _This is the LEAST important selector_
4. Contextual/Conditional - selective styling - `p strong{}`
5. Group/Compound selector - more than 1 tag
6. Pseudo-class \[link,active,hover,visited\] - _MORE important than the other pseudo-element_
7. ID Selector
8. when to use id vs class?
	* Use Class references with Less weightage
	* Use the TAG selectors first

###Selectors Precedence
1. The precedence for any style flows as : `inline > Embedded > External`
2. The precedence for any selector: id > class > tag

For more details, refer to 

* [Specificity](http://www.w3.org/TR/CSS21/cascade.html#specificity) 
* [Selector](http://www.w3.org/TR/CSS2/selector.html)
* [CSS Tricks](http://css-tricks.com/specifics-on-css-specificity/)

###Hierarchy of precedence
1. The ID selector
2. The attribute selector
3. The class selector
4. The child selector
5. The adjacent sibling selector - `.blog-img + p`
6. The descendant selector
7. The tag selector


###Shorthand syntax
####background

{% highlight css %}
 background: url(example.gif);
 background-color: #eaeaea ;
 background-repeat: repeat-x;
 background-position: top left;
{% endhighlight %}

can be written as:

`background: #eaeaea url(example.gif) repeat-x top left;`

####border

{% highlight css %}
border-color: red;
border-width: 1px;
border-style: solid;
{% endhighlight %}

can be written as:

`border: 1px solid red;`

####list

{% highlight css %}
list-style-position: outside;
list-style-image: none;
list-style-type: disc;
{% endhighlight %}

can be written as:

`list-style: disc outside;`

the general format for a list style is:

`list-style: [list-style-type] [list-style-position] [list-style-image];`


####font

{% highlight css %}
font-family: Arial, Helvetica;
font-weight: bold;
font-style: italic;
font-size: 1em;
line-height: 1.5em;
{% endhighlight %}

can be written as:

`font: bold italic 1em/1.5em Arial, Helvetica;`

####margin
The margin properties allows a shorthand for margin-top, margin-right, margin-bottom and margin-left.

{% highlight css %}
/* top=10px, right=5px, bottom=15px, left=20px */
margin: 10px 5px 15px 20px;

/* top=10px, right=5px, bottom=10px, left=5px*/
margin: 10px 5px;

/* top=10px, right=5px, bottom=15px, left=5px*/
margin: 10px 5px 15px;
{% endhighlight %}

###Form features in HTML5
1. Placeholder text
2. Slider control
3. Calendar/Date picker
4. autocomplete
5. Input type Search

###CSS features in HTML5
1. Shadow - box shadow, text shadow
2. Gradient
3. Blur
4. column text
5. transform / transitions
6. Rounded corners (using border radius)
7. CSS Regions
8. Exclusions
9. Shaders
10. Shadow DOM
11. Multiple Images in background
12. Alpha 
13. Font-faces
14. Animation using Keyframes
	_Postion:fixed or other positioning important for animations to work_

###New Tags in HTML5
1. New semantic tags - header, footer, nav, section, aside, article
2. Multimedia tags - audio/sound,video
3. Drawing based tags - canvas, svg
4. Form based new tags - Date, slider, time, spinner

###Important Links
1. [Css3Generator](http://css3generator.com/)
2. [Reset](http://meyerweb.com/eric/tools/css/reset/)
3. [Grid](http://vandelaydesign.com/blog/design/resources-grid-based-design/)
4. [IE support](http://paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/)
5. [html5shiv](https://github.com/aFarkas/html5shiv)
6. [modernizer](http://modernizr.com/)
7. [html5boilerplate](http://html5boilerplate.com/)
8. [Adobe Inspect](http://html.adobe.com/edge/inspect/)
9. [Brackets](http://brackets.io/)