title=Java Mail Made Easy using Velocity Templates
date=2010-10-01
tags=javamail, java, velocity
slug=java-mail-using-velocity-templates
summary=Using velocity templates for simpler generation of Java mail templates and data
category=Papers
author=Senthilkumar Gopal
type=post
status=published
~~~~~~

###Introduction to Velocity
Velocity is an open source templating tool developed by an international volunteer community and hosted by the Apache Software Foundation's Jakarta Project. You can download the freely available source code at the [Jakarta Velocity](http://www.javaworld.com/javaworld/jw-12-2001/jw-1228-velocity.html#resources) Project Website.

###Simple Velocity Template Example
Any application using Velocity requires two parts. The first is the template

**Helloworld.vm**

      Hello $name!  Welcome to Velocity!

**HelloWorld.java:**

      import java.io.StringWriter;
      import org.apache.velocity.Template;
      import org.apache.velocity.VelocityContext;
      import org.apache.velocity.app.Velocity;
      public class HelloWorld{
          public static void main( String[] args ) throws Exception {
              /*  Get the Template  */
              Template t = Velocity.getTemplate("Helloworld.vm" );
              /*  create a context and add data */
              VelocityContext context = new VelocityContext();
              context.put("name", "World");
              /* now render the template into a StringWriter */
              StringWriter writer = new StringWriter();
              t.merge( context, writer );
              /* show the World */
              System.out.println( writer.toString() );
          }
      }

**Output**

      Hello World!  Welcome to Velocity!

###Introduction to JAVA MAIL API
The Java Mail API provides the capability to develop email clients and mail-enabled Java applications. It supports the creation of sophisticated user interfaces for mail clients. It includes appropriate convenience classes, which encapsulate common mail functions and protocols. It fits with other packages for the Java platform in order to facilitate its use with other Java APIs. It provides a mail and messaging framework addition to the Java platform.

Although the Java Mail API contains many more classes than those discussed here, concentrating on some of the core classes to start with makes it easy to understand the essence of the API. The following is a brief description of the core classes:

####javax.mail.Session
The javax.mail.Session class is the top-level entry class for the Java Mail API, and its most commonly used methods provide the ability to control and load the classes that represent the service provider implementations (SPI) for various mail protocols (Note: A service provider is a developer and/or vendor that provides an implementation for an API; examples of Java Mail API implementations include POP3, SMTP, and IMAP4 -- some are available from Sun, others via third parties.)

####javax.mail.Transport
The javax.mail.Transport class is another provider-implemented class and is used for sending a message over a specific protocol.

####javax.mail.Message
The javax.mail.Message class is implemented by a provider and models all the details of an actual e-mail message, such as the subject line, sender/recipient e-mail address, sent date, and so on. The guidelines for providers who implement the javax.mail.Message dictate that the actual fetching of e-mail message components should be delayed as long as possible in order to make this class as lightweight as possible.

####Simple JAVA Mail Example

      import java.beans.*;
      import javax.mail.*;
      import javax.mail.internet.*;
      import java.io.*;
      import java.util.*;
       public class MailBean {
            public MailBean(String from, String userName, String subject, String content){
               try{
                  mail(from, userName, subject, content);
               }catch(MessagingException e)  {}
             }
             public String getBenaInfo(){
                  return "A Bean that sends mail";
            }
           public void mail(String from, String userName, String subject, String content)throws MessagingException{
              String smtpHost = "00.00.00.00";
              //start a session
              java.util.Properties properties = System.getProperties();
              properties.put("mail.smtp.host",smtpHost);
              Session session = Session.getInstance(properties,null);

              //Construct a message object
              MimeMessage message = new MimeMessage(session);
              message.setFrom(new InternetAddress(from));
              message.addRecipient(Message.RecipientType.TO,new InternetAddress(userName));
              message.setSubject(subject);
              message.setText(content);
              message.setSentDate(new java.util.Date());

              //connect to transport
              Transport transport = session.getTransport("smtp");
              transport.connect(smtpHost,"", "");

              //send the message and close the connection
              transport.sendMessage(message,message.getAllRecipients());
              transport.close();
           }
       }

As there are a lot of tutorials available for Velocity and Java Mail, this tutorial deals only with the integration of Velocity for easier and more customized mailing abilities.

###Project Usage
Our Project required nearly fifty different mail formats to be sent on various stages of the application. The difficult part being that the templates contained loads of dynamic data. Also these templates were being updated on a regular basis making it more difficult for developing the application.

We used Velocity Templates for storing the design and the layout of the mail which needs to be sent and used them for integrating the dynamic attributes into the layout and hence providing a seamless abstraction between the presentation and the business layer.


##Step-by-Step Explanation of the Code

###SendMessage.java

__Velocity Template Merging__

* The best practice for storing the non-variables such as the SMTP connect parameters, the template names etc., either in a properties file or in a constants interface. In this example, a properties file, “mail. properties” has been used. Using the ClassLoader the properties file is loaded

          Properties props = new Properties();
          props.load(SendMessage.class.getClassLoader().getResourceAsStream("mail.properties"));

* The Mail.vm template is loaded from into the Velocity context using the static method Velocity.getTemplate

          Template template = Velocity.getTemplate("Mail.vm");
          VelocityContext context = new VelocityContext();

* Then the user defined MailBean is placed in the velocity Context under the name “MailBean”

          context.put("MailBean" , mailBean);

* Along with beans, we can place name value pairs directly in the velocity context

          String host =  props.getProperty("hostname");
          context.put("host", host);
          context.put("imgName", "smile.gif");
          context.put("context", "myApp");

* When the context is merged with the template and the results in placed in a StringWriter Object

          StringWriter message = new StringWriter();
          template.merge(context, message);

__JAVA Mail - E-Mail Creation__

* The SMTP Host variable is placed in the System Properties and the javax.mail.Session is obtained for the given SMTP Host

          Properties sysProperties = System.getProperties();
          sysProperties.put("mail.smtp.host", props.getProperty("smtpHost"));
          Session session = Session.getInstance(sysProperties, null);

* Since the e-mail needs to contain text and an image file, create a MimeMultipart with the subtype declared as “related’ so that the image being put doesnt get lost if the images are blocked by the recipient

          MimeMultipart multipart = new MimeMultipart("related");

__For adding the image to the e-mail__

* Create a body part for storing the image and embedding into the e-mail

          BodyPart imageBodyPart = new MimeBodyPart();

* Use the FileDataSource to read the image from the Web deployment folder.
Note: _Using File.seperator takes care of the Windows/Unix environment issue_

          StringBuffer imgPath = new StringBuffer().append(File.separator).append("applications").append(File.separator).append("mailheader.GIF");

* Then using the DataHandler object place the image into the BodyPart created

          DataSource fds = new FileDataSource(imgPath.toString());
          imageBodyPart.setDataHandler(new DataHandler(fds));

* Set an id for the image body part so that the image can be accessed anywhere in the mail for embedding

          imageBodyPart.setHeader("Content-ID","<123>");

* Add the Image Body Part into the MimeMultiPart object

          multipart.addBodyPart(imageBodyPart);

__Adding the Message body content to the e-mail__

* Create a body part for storing the message content in the e-mail

          BodyPart messageBodyPart = new MimeBodyPart();

* Combine the StringWriter Object and the image src code using a StringBuffer

          StringBuffer messageBuffer = new StringBuffer();
          messageBuffer.append(message.toString());
          messageBuffer.append("<img src="cid:123\">");

* Set the Message content type as *text/html*, since our template VM is designed using HTML and add the message body part to the main MultiMime part

          messageBodyPart.setContent(messageBuffer.toString(), "text/html");
          multipart.addBodyPart(messageBodyPart);

__Sending the E-Mail__

* Create a MimeMessage using the javax.mail.Session Object

          Message msg = new MimeMessage(session);

* Set the content as the multimime part object created

          msg.setContent(multipart);

* The Recipients are added to the e-mail for the recipient types TO, CC and BCC

          msg.addRecipients(Message.RecipientType.TO, InternetAddress.parse("someone@example.com"));
          msg.addRecipients(Message.RecipientType.CC,InternetAddress.parse("everyone@example.com"));
          if((null!=recipientsList)&&(!recipientsList.isEmpty())){
              for(int i=0;i<recipientsList.size();i++){
                  msg.addRecipients(Message.RecipientType.BCC,InternetAddress.parse(recipientsList.get(i)));
              }
          }

* The Subject Text, Sent Date and the From Address are set as below.

          msg.setSubject(subject);
          msg.setSentDate(new Date());
          msg.setFrom(new InternetAddress("dummy@example.com"));

* The Transport Object is used for creating the connection to the SMTP host and sending the e-mail. The transporter object below is obtained using the getTransport method and by giving the parameter as *smtp* as the protocol for the Transport Object

          Transport transport = session.getTransport("smtp");

* Then the Transport is connected using the HOST, UserName and Password parameters from the properties file

          transport.connect(props.getProperty("connectHost");
          props.getProperty("connectUser");
          props.getProperty("connectPassword");

* Then the e-mail is sent using the sendMessage to all the recipients

          transport.sendMessage(msg,msg.getAllRecipients());

* The transport is closed to mark the end of the connection

          transport.close();

####Mail.vm

__Image Path Macro__

This macro is used to return the path to be used as SRC by the images in the HTML. It takes a parameter imgName and returns the string,

      https://$host/$context/images/$imgName

where $host, $context are context variables placed by the JAVA code

The macro looks like this

      #macro( IMGURL $imgName )
          https://$host/$context/images/$imgName
      #end

Example:

      <img src="#IMGURL('mailheader.GIF')" border="0" width="980" height="61">

This will get generated as:

      <img src="https://localhost/myapp/images/mailheader.GIF" border="0" width="980" height="61">

__Accessing the Bean Object__

The variables in the MailBean object placed in the context can be accessed using, `$MailBean.\[variable-name\]`
Example: `Mail Content : $MailBean.content`

####mail.properties

This file contains the connection and the other context parameter properties used by the java code

###Advantages

Designed as an easy-to-use general templating tool, Velocity is useful in any Java application area that requires data formatting and presentation. Their salient advantages being:
* It adapts to many application areas.
* It offers a simple, clear syntax for the template designer.
* It offers a simple programming model for the developer.
* Because templates and code are separate, you can develop and maintain them independently.
* The Velocity engine easily integrates into any Java application environment, especially Servlets.
* Velocity enables templates to access any public method of data objects in the context.

References

* <http://velocity.apache.org/>
* <http://www.roseindia.net/software-tutorials/detail/3131>
* <http://java.sun.com/developer/>
* <http://kickjava.com/2876.htm>
* <http://www.javaworld.com/javaworld/jw-12-2001/jw-1228-velocity.html>
* <http://velocity.apache.org/engine/releases/velocity-1.5/user-guide.html>
* <http://www.javasoft.com/products/javamail>
