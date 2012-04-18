---
layout: post
title: JAXB Usage for single line conversion
tags:
- java
status: publish
type: post
published: true
meta:
  jabber_published: '1306649120'
---
<p>I came across a great article which introduces a utility Class <a href="http://download.oracle.com/javase/6/docs/api/javax/xml/bind/JAXB.html" target="_blank">JAXB</a> which converts XML to Object and vice versa in a single line.</p>  <p>For Unmarshalling an XML to a Class Object</p>  <pre>JAXBContext context = JAXBContext.newInstance(ObjectToConvert.class);
Unmarshaller u = context.createUnmarshaller();
return (ObjectToConvert) u.unmarshal(xmlInputStream);

// becomes
return (ClassToConvert)JAXB.unmarshal(xmlInputStream, ObjectToConvert.class);</pre>

<p>&#160;</p>

<p>For Marshalling an Object to a XML</p>

<pre>JAXBContext context = JAXBContext.newInstance(objectInstanceToConvert.getClass());
Marshaller m = jc.createMarshaller();
m.marshal(objectInstanceToConvert, xmlOutputStream);

// becomes
JAXB.marshall(objectInstanceToConvert, xmlOutputStream)</pre>

<p>The original article which gave me this utility class is <a href="http://en.newinstance.it/2011/05/26/jaxb-tip-one-line-of-code-to-marshall-and-unmarshall-xml/" target="_blank">here</a></p>
