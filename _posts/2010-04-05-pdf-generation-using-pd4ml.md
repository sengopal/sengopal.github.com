---
layout: post
title: PDF Generation using PD4ML
type: post
tags:
 - java
published: true
meta:
categories:
 - research
---
###Project Usage
Our Project required PDF generation at various stages of the application and the uploading the same into the FileNet FTP. PD4ML was used for generation and saving the file locally into the server from which the PDF got generated to the FileNet

PD4ML was used as our application used Struts framework and the data needed in the PDF was provided using STRUTS and the layout design was done using HTML and CSS. This provided us with a seamless abstraction between the presentation and the business layer for dynamic generation of PDFs online.

###Introduction to PD4ML
PD4ML is a powerful PDF generating tool that uses HTML and CSS (Cascading Style Sheets) as page layout and content definition format. Written in 100% pure Java, it allows users to easily add PDF generation functionality to end products. PD4ML can be used either as a command line operation or in Web applications for online PDF generation from HTML and JSP templates.

###PD4ML as a Command Line Operation
PD4ML can be used for HTML to PDF transformation with a command line application. There are man ways for achieving this conversion. However the most commonly used methods are as follows:
####Creating a PDF from an URL String
The PDF can be generated using a html file whose URL can be in the render () method	

	import org.zefer.pd4ml.PD4ML;
	import org.zefer.pd4ml.PD4Constants;
	........
	
	File f = new File("D:/tools/test.pdf");
	java.io.FileOutputStream fos = new java.io.FileOutputStream(f);
	PD4ML pd4ml = new PD4ML();
	pd4ml.render( urlstring, fos );
	
	
__Steps Involved__

1. Import the PD4ML converter class
2. Define HTML-to-PDF converting parameter values if needed such as user space width, HTML elements arrangement, vertical size etc.,
3. Preparing output stream for PDF generation.
4. Instantiating PD4ML converter.
5. Passing to it HTML-to-PDF converting parameters.
6. Performing HTML-to-PDF translation.


__Converting HTML obtained from input stream to PDF__

Using an URL for converting an HTML into a PDF is not mandatory. PD4ML can read a source HTML from input stream and then use the input stream for conversion into the PDF

{% highlight java %}
File f = new File("D:/tools/test.pdf");
java.io.FileOutputStream fos = new java.io.FileOutputStream(f);
File fz = new File("D:/tools/yahoo.htm");
java.io.FileInputStream fis = new java.io.FileInputStream(fz);
InputStreamReader isr = new InputStreamReader( fis, "UTF-8" ); 
PD4ML html = new PD4ML();
URL base = new URL( "file:D:/tools/" );
html.render( isr, fos, base );
{%endhighlight %}

###Formatting the PDF document generated
The PDF getting generated can be formatted using various methods. Some of the most commonly used ones are given below:

{% highlight java %}
PD4ML html = new PD4ML();
html.setPageSize( new Dimension(450, 450) );
//defines page size in points. A set of predefined page format constants is available in the PD4Constants interface.
html.setPageInsets( new Insets(20, 50, 10, 10) );
//specifies page insets in points
html.setHtmlWidth( 750 );
//defines desired HTML page width in screen pixels. Virtually it can be seen as a web browser window horizontal resize
html.enableImgSplit( false );
//allows to disable image splitting by page breaks. By default the option is true (splitting enabled).
{% endhighlight %}
