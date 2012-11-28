---
layout: post
title: Personal CSS style guidelines
type: post
tags:
 - css, style, guidelines
published: true
meta:
categories:
 - blog
---
Though there are very detailed guidelines available for maintaining the CSS files, the most commonly used ones which we follow are given below

* [HTML guidelines](#html-guidelines)
* [Best Practices](#best-practices)
* [Property Specific guidelines](#property-specific-guidelines)
* [Naming Conventions](#naming-conventions)
* [Grouping of properties](#grouping-of-properties)
* [Comments](#comments)
* [Formatting of rulesets](#formatting-of-rulesets)
* [Responsive Web Design](#response-web-design)
* [Table of contents](#table-of-contents)
* [CSS Categorization](#css-categorization)
* [HTML Layout](#html-layout)
* [Linting](#linting)
* [References](#references)

Like any coding standard, the purpose of this standard is to create a baseline for collaboration and review within various aspects of the verification platform projects. Files within a project should appear as though created by a single entity. Above all else, create code that is readable, meaningful, consistent, and beautiful.

## HTML guidelines
1. Use a new line for every block, list, or table element, and indent every such child element.
2. Independent of the styling of an element (as CSS allows elements to assume a different role per display property), put every block, list, or table element on a new line.
3. Indent them if they are child elements of a block, list, or table element.
4. Always use appropriate semantics including HTML5 tags such as header, footer, aside, nav etc.,


##Best Practices

> I have a blanket-ban on IDs in CSS. There is literally no point in them, and they only ever cause harm.

1. If you must use an id selector (#selector) make sure that you have no more than one in your rule declaration. A rule like #header .search #quicksearch { ... } is considered harmful.
2. Do not use entity references. There is no need to use entity references like &mdash;, &rdquo;, or &#x263a;, assuming the same encoding (UTF-8) is used for files and editors as well as among teams.
3. Never use magic numbers. Ex: `{padding-left: 87px;}` is a very bad piece of code.
4. Class names such as disabled, mousedown, danger, hover, selected, and active should always be namespaced by a class (button.classy.selected is a good example).
5. Usage of min-width for wrappers
6. Set the font-family as a list rather than only one value. {Ensure that there is atleast one web-safe font available in the list}
7. Never nest more than 3 levels of selectors
8. __If you are attempting to fix an issue, attempt to remove code before adding more.__
9. DOM will change over time, target the element you want to use as opposed to "finding it" through its parents. Example: Use .highlight on the element as opposed to .highlight a (where the selector is on the parent)
10. Know when to use the height property. It should be used when you are including outside elements (such as images). Otherwise use line-height for more flexibility.
11. Do not restate default property & value combinations (for instance display: block; on block-level elements).
12. Avoid qualifying ID and class names with type selectors. Unless necessary (for example with helper classes), do not use element names in conjunction with IDs or classes. Avoiding unnecessary ancestor selectors, is useful for performance reasons.

  {% highlight css %}
    /* Not recommended */
    ul#example {}
    div.error {}
  {% endhighlight %}

13. Use shorthand properties where possible. CSS offers a variety of shorthand properties (like font) that should be used whenever possible, even in cases where only one value is explicitly set. Using shorthand properties is useful for code efficiency and understandability.
14. Try to minimize using markup for styling hooks. This will allow you to simplify the markup/DOM. Use media queries to override your "base" CSS properties.

##Property Specific guidelines

1. Line-height should never be given with units
2. Where allowed, avoid specifying units for zero-values, e.g., margin: 0.
3. Vendor prefixes should go longest (-webkit-) to shortest (unprefixed). Values should be right aligned with spaces after the colon provided that all the values are the same across all prefixes.

  {% highlight css %}
.koop-shiny {
     -webkit-box-shadow: inset 0 0 1px 1px #eee;
     -moz-box-shadow:    inset 0 0 1px 1px #eee;
     box-shadow:         inset 0 0 1px 1px #eee;
 
     -webkit-transition: border-color 0.1s;
     -moz-transition:    border-color 0.1s;
     -ms-transition:     border-color 0.1s;
     -o-transition:      border-color 0.1s;
     transition:         border-color 0.1s;
}
  {% endhighlight %}

##Naming Conventions

1. Use meaningful words for IDs and classnames. Abbrievate or expand to maintain readability
2. Use lowercase and separate words with hyphens when naming selectors. Never use Camelcasing, underscores or other special characters.
3. Use Naming convention to clarify INTENT. Examples: .text-plus1{}
4. Don't code CSS for the page. Code it for the system.
5. If you must use an id selector (#selector) make sure that you have no more than one in your rule declaration. A rule like #header .search #quicksearch { ... } is considered harmful.

##Grouping of properties

1. Declarations should be ordered in accordance with a single principle. 
2. Commonly used preference is for structurally important properties (e.g. positioning and box-model) to be declared prior to all others and group the properties based on TYPE.

  {% highlight css %}
.selector {
  /* Positioning */
  position: absolute;
  z-index: 10;
  top: 0;
  right: 0;

  /* Display & Box Model */
  display: inline-block;
  overflow: hidden;
  box-sizing: border-box;
  width: 100px;
  height: 100px;
  padding: 10px;
  border: 10px solid #333;
  margin: 10px;

  /* Color */
  background: #000;
  color: #fff

  /* Text */
  font-family: sans-serif;
  font-size: 16px;
  line-height: 1.4;
  text-align: right;

  /* Other */
  cursor: pointer;
}
  {% endhighlight %}


##Comments
> In situations where it would be useful for a developer to know exactly how a chunk of CSS applies to some HTML, I often include a snippet of HTML in a CSS comment.

1. Comments that refer to selector blocks should be on a separate line immediately before the block to which they refer.
2. Always use /* */ for comment blocks 

##Formatting of rulesets

Indent by 2 spaces at a time. (for both HTML and CSS). Donâ€™t use tabs or mix tabs and spaces for indentation.
All code has to be lowercase: This applies to element names, attributes, attribute values (unless text/CDATA), selectors, properties, and property values (with the exception of strings such as `<img src="item.png" alt="Android Mobile Phone">`).

1. Add two blank lines between sections and one blank line between blocks in a section. Separate each ruleset by a blank line.
2. Use soft-tabs with a two space indent.
3. Put two spaces after : in property declarations.
4. Put two spaces before { in rule declarations.
5. Use one discrete selector per line in multi-selector rulesets.
6. Include one declaration per line in a declaration block.
7. Use one level of indentation for each declaration.
8. Use hex code for colors, or rgba() if opacity is needed. Avoid RGB format and uppercase, and shorten values when possible: #fff instead of #FFFFFF.
9. Use single quotation marks for attribute selectors and property values where necessary. When quoting attribute selectors and property values, use single ('') rather than double ("") quotation marks. Do not use quotation marks in URI values (url()).
10. Quote attribute values in selectors, e.g., input[type="checkbox"].
11. Include a space after each comma in comma-separated property or function values.
12. Include a semi-colon at the end of the last declaration in a declaration block.
13. Place the closing brace of a ruleset in the same column as the first character of the ruleset.

  {% highlight css %}
  .selector-1,
  .selector-2,
  .selector-3[type="text"] {
      -webkit-box-sizing: border-box;
      -moz-box-sizing:    border-box;
      box-sizing:         border-box;
      display: block;
      font-family: helvetica, arial, sans-serif;
      color: #333;
      background: #fff;
      background: linear-gradient(#fff, rgba(0, 0, 0, 0.8));
  }
  {% endhighlight %}
14. Remove trailing white spaces as trailing white spaces are unnecessary and can complicate diffs.  

##Responsive Web Design

1. Start with a flexible grid layout
2. Always use percentages for containers
3. <http://rwdcalc.com> - Calculator and CSS generator for percentage generation
4. Always use em for fonts and other sizes
5. Maximize use of background images
6. Set the sizing of images and other elements using relative width and percentages
7. Use User Agent Switcher to verify the layout in various desktop and mobile browsers
8. Use the meta name in the `<head>` tag
  {% highlight html %}
  <meta name="viewport" content="width=device-width,maximum-scale=1">
  {% endhighlight %}
  Optional: initial-scale=1,user-scalable=n
9. Always use min-width, max-width, device-pixel-ratio:2
10. Maximize use of high pixel density displays, Minimize image downloads per platform

    {% highlight css %}
  @media only all and
  (min-device-pixel-ratio:2){
      #bg{
    background:url(bg.png);
    background-size: 50% 50%;   
      }
  }
    {% endhighlight %}
11. Seperate stylesheet for high density displays
12. Produce image scales by pixel-ratio
13. Write CSS-to-device px compensation
14. Apply media query features to value ranges using min- and max-
15. Supply a core stylesheet that maintains appearance that is independent of media queries
16. Media queries allow us to gracefully degrade the DOM for different screen sizes. If you are adding any, be sure to test above and below the break-point you are targeting. It is generally advisable to keep media queries grouped by media at the bottom of the stylesheet. 
17. Rule sets for media queries should be indented one level in.

    {% highlight css %}
  @media all and (max-width: 699px) and (min-width: 520px) {
         /* Your selectors */
  }
    {% endhighlight %}

    ##Table of contents

At the top of each CSS file, it is good to have a table of contents that maps to the section titles in the document.

{% highlight css %}
  /*------------------------------------*\
      CONTENTS
  \*------------------------------------*/
  /*
  NOTES
  RESET
  SHARED     Share anything we can across elements.
  MAIN       HTML, BODY, etc.
  */
  Section titles

  Each section (layout, type, tables etc) of CSS would look like:

  /*------------------------------------*\
      $MAIN
  \*------------------------------------*/
  {% endhighlight %}

##CSS Categorization 

It is always recommended to use to a state-based design if the web application has user and state based representations such as:

* A layout or module style
* Sub-modules
* JavaScript-driven states
* Pseudo-class states
* Media query states

For our design needs, we would be maintaining a common hierarchy as follows:

1. Base CSS
{% highlight css %}
html {
  background-color: #FFF;
  font-family: Arial, Helvetica, sans-serif;
    font-size: 14px;
}
body {
  margin: 0;
  padding: 0;
}
h1, h2, h3 {
  margin: 1em 0;
}
  {% endhighlight %}

2. Layout CSS
   This CSS should contain the common styling for header, sidebar, content
3. Module CSS
   This CSS should contain the styling for customized list, buttons, tabs
   Examples : .tab{}, .listview{}, .btn{}
4. Sub-Modules CSS
   This CSS should contain the customizations for the modules such as dark, small, large, search
   Examples: .btn {}, .btn-large {}, .btn-small {}, .btn-default {}, .btn-search {}
5. State
   This CSS should have classes defined for state specific behaviour such as hover, active-state, default-state
   Examples: .tab{}, .is-tab-active{}
6. Theme
   This CSS will have classes specific to theming
   Examples: .theme-header{}, .theme-border{}, .theme-background{}

##HTML layout

{% highlight html %}
<!DOCTYPE HTML>
 <html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Website Title</title>
    </head>
     <body>
         <header>
            <nav>
                <ul>
                    <li>Home</li>
                    <li>Contact</li>
                </ul>
            </nav>
        </header>
         <section>
             <article>
                <header>
                    <h2>Title Goes here</h2>
                    <p>
                      Posted on <time datetime="2012-07-28T13:00:24+01:00">July 28th 2012</time> 
                      by <a href="#">Author</a> - <a href="#comments">12 comments</a>
                    </p>
                </header>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
            </article>
             <article>
                <header>
                    <h2>Article title</h2>
                    <p>
                      Posted on <time datetime="2012-07-26T13:00:24+01:00">July 26th 2012</time> 
                      by <a href="#">Author</a> - <a href="#comments">9 comments</a>
                    </p>
                </header>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
            </article>
         </section>
         <aside>
            <h2>Contact Us</h2>
            <p>
              It is a long established fact that a reader will be distracted by the readable content of 
              a page when looking at its layout.
            </p>
        </aside>
         <footer>
            <p>Copyright 2012©</p>
        </footer>
     </body>
 </html>
  {% endhighlight %}

##Linting
_TBD_


##References

1. <http://github.com/styleguide/css>
2. <http://google-styleguide.googlecode.com/svn/trunk/htmlcssguide.xml>
3. <http://github.com/necolas/idiomatic-css>
4. <http://csswizardry.com/2012/04/my-html-css-coding-style/>
5. <http://make.wordpress.org/core/handbook/coding-standards/css/>