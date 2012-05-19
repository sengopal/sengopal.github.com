---
layout: post
title: JAXB Usage for single line conversion
tags:
- java
status: publish
type: post
published: true
meta:
  categories:
 - blog
---
I came across a great article which introduces a utility Class [JAXB](http://download.oracle.com/javase/6/docs/api/javax/xml/bind/JAXB.htm) which converts XML to Object and vice versa in a single line.

**For Unmarshalling an XML to a Class Object** 

    JAXBContext context = JAXBContext.newInstance(ObjectToConvert.class);
    Unmarshaller u = context.createUnmarshaller();
    return (ObjectToConvert) u.unmarshal(xmlInputStream);
    
    // becomes
    return (ClassToConvert)JAXB.unmarshal(xmlInputStream, ObjectToConvert.class);
    
    
**For Marshalling an Object to a XML**

    JAXBContext context = JAXBContext.newInstance(objectInstanceToConvert.getClass());
    Marshaller m = jc.createMarshaller();
    m.marshal(objectInstanceToConvert, xmlOutputStream);
    
    // becomes
    JAXB.marshall(objectInstanceToConvert, xmlOutputStream)