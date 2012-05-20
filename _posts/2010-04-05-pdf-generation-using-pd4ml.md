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

####For Generating Text-Only Header and Footer
Static or template text can be used for header and footer of the PDF document. The header and the footer can be set with various formats. Few of them are:
{% highlight java %}
PD4PageMark header = new PD4PageMark();
header.setAreaHeight( 20 );
//defines height of the header or footer area
header.setTitleTemplate( "title: $[title]" );
//defines a template for page title representation.
//No title is printed, if the titleTemplate is set to null. Default value is null.
header.setTitleAlignment( PD4PageMark.CENTER_ALIGN );
//defines alignment for the page title string in the document's header of footer
header.setPageNumberAlignment( PD4PageMark.LEFT_ALIGN );
//defines alignment for the page numbers in the document's header of footer area
header.setPageNumberTemplate( "#$[page]" );
//defines a template for page number representation
PD4PageMark footer = new PD4PageMark();
footer.setAreaHeight( 30 );
//Already explained above
footer.setFontSize( 20 );
//sets font size for the header or footer
footer.setColor( Color.red );
//setColor() sets the color of header or footer text
footer.setPagesToSkip( 1 );
//defines a number of pages from the document beginning, that should not be marked with the header or footer info
footer.setTitleTemplate( "[ $[title] ]" );
//Already explained above
footer.setPageNumberTemplate( "page: $[page]" );
//Already explained above
footer.setTitleAlignment( PD4PageMark.RIGHT_ALIGN );
//Already explained above
footer.setPageNumberAlignment( PD4PageMark.LEFT_ALIGN );
//Already explained above

pd4ml.setPageHeader( header );
pd4ml.setPageFooter( footer );
{% endhighlight %}

####Protecting PDF documents
A PDF document can be encrypted to protect its contents from unauthorized access. PD4ML supports PDF access permissions concept and allows a password to be specified for a document. If any passwords or access restrictions are specified with PD4ML.setPermissions (), the document is encrypted, and the permissions and information required to validate the passwords are stored to the resulting document. 

The possible restrictions are:

1. Modifying the document’s contents 
2. Copying or otherwise extracting text and graphics from the document 
3. Adding or modifying text annotations 
4. Printing the document 

The various types of pre-set Permissions available in the API are:

* AllowAssembly 
* AllowContentExtraction 
* AllowCopy 
* AllowDegradedPrint 
* AllowModify 
* AllowPrint 

The PDF document produced by PD4ML can be protected with 40-bit or 128-bit encryption using the various Permission levels given above.

	String password = "empty";
	boolean strongEncryption = true;
	int permissions = PD4Constants.AllowPrint | PD4Constants.AllowCopy;
	pd4ml.setPermissions( password, permissions, strongEncryption );

Some of the other salient Features that are available with PD4ML are:

* Converting HTML headings or named anchors to PDF bookmarks
* Named anchors
* Inserting page breaks
* generating and sending PDF by email

###Using PD4ML in Web applications for online PDF generation 
PD4ML can be used in Web applications for online PDF generation from HTML, JSP and Servlet templates. A simple example is given below:
{% highlight jsp %}

<%@taglib uri="http://pd4ml.com/tlds/pd4ml/2.5" prefix="pd4ml" %>
<%@page contentType="text/html; charset=UTF-8" %>

<pd4ml:transform
      screenWidth="400"
      pageFormat="A5"
      pageOrientation="landscape"
      pageInsets="100,100,100,100,points"
      enableImageSplit="false">

  <html>
      <head>
            <title>pd4ml test</title>
            <style type="text/css">
                  body {
                        color: red;
                        background-color: #FFFFFF;
                        font-family: Tahoma, "Sans-Serif";
                        font-size: 10pt;
                  }
            </style>
      </head>
      <body>
           <img src="images/logos.gif" width="125" height="74">
            <p>
            Hello, World!
 		<pd4ml:page.break/>
            <table width="100%" style="background-color: #f4f4f4; color: #000000">
            <tr>
            <td>
                  Hello, New Page!
            </td>
            </tr>
            </table>
      </body>
  </html>
</pd4ml:transform>
{% endhighlight %}

