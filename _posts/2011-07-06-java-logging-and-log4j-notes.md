---
layout: post
title: Java Logging and Log4J Notes
tags:
- java
status: publish
type: post
published: true
meta:
  jabber_published: '1309936010'
  _wpas_done_twitter: '1'
---
<h5><strong>TIPS</strong></h5>  <p>Use isDebugEnabled() for putting debug log in Java   <br />choose which kind of message should go to which level for logging in Java    <br />Use either log4j or java.util.logging for logging in Java,    <br />Using log4j.xml you can have different logger configuration for different java classes    <br />include Thread Name and fully qualified java class Name while printing logs    <br />use some kind of prefix    <br />use parametrized version of various log methods they are faster as compared to normal method</p>  <h5><strong>Class Specific Log File</strong></h5>  <p>For example, if we have a class which is logging using the log4j.</p>  <blockquote>   <p>import org.apache.commons.logging.Log;     <br />import org.apache.commons.logging.LogFactory;      <br />public class WebTrackingLogger {      <br />&#160;&#160;&#160; private static final Log log = LogFactory.getLog(WebTrackingLogger.class);      <br />&#160;&#160;&#160; public static void log(Sting ip, String url, String.... otherValues) {      <br />&#160;&#160;&#160;&#160;&#160;&#160;&#160; log.info(IP + &quot; &quot; + URL);      <br />&#160;&#160;&#160;&#160;&#160;&#160;&#160; ....      <br />&#160;&#160;&#160;&#160;&#160;&#160; log.warn(IP + &quot; &quot; + URL, e);      <br />&#160;&#160;&#160; }</p>    <p>}</p> </blockquote>  <p>The logs from this code alone can be rolled seperately using, </p>  <blockquote>   <p>log4j.category.com.company.WebTrackingLogger.INFO, PL     <br />log4j.appender.PL=org.apache.log4j.DailyRollingFileAppender      <br />log4j.appender.PL.layout=org.apache.log4j.PatternLayout      <br />log4j.appender.PL.layout.ConversionPattern=%d %x - %m%n      <br />log4j.appender.PL.File=/var/log/app/web-tracking-log      <br />log4j.appender.PL.DatePattern='.'yyyy-MM-dd</p></blockquote>
