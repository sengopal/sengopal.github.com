Title: JAXB Usage for single line conversion
Date: 2011-05-29 10:20
Tags: jaxb, java
Slug: jaxb-usage-for-single-line-conversion
Summary: A single line conversion utility for XML conversion
Category: Java
Author: Senthil Gopal

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
