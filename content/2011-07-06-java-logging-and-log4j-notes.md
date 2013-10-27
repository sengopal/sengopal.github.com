Title: Java Logging and Log4J Notes
Date: 2011-07-06 15:00
Tags: java, logging, log4j
Slug: java-logging-and-log4j-notes
Summary: Java Logging and Log4J Notes basic setup
Category: Java
Author: Senthil Gopal

####Some tips for Java Logging####
1. Use isDebugEnabled() for putting debug log in Java
2. Choose which kind of message should go to which level for logging in Java
3. Use either log4j or java.util.logging for logging in Java
4. Using log4j.xml you can have different logger configuration for different java classes
5. Include Thread Name and fully qualified java class Name while printing logs
6. Use some kind of prefix and parametrized version of various log methods as they are faster compared to normal method

####Class Specific Log File####
For example, if we have a class which is logging using the log4j.

    :::java
    import org.apache.commons.logging.Log;
    import org.apache.commons.logging.LogFactory;

    public class WebTrackingLogger {
        private static final Log log = LogFactory.getLog(WebTrackingLogger.class);
        public static void log(Sting ip, String url, String.... otherValues) {
            log.info(IP + " " + URL);
            ....
            log.warn(IP + " " + URL, e);
        }
    }

The logs from this code alone can be rolled seperately using,

    :::java
    log4j.category.com.company.WebTrackingLogger.INFO, PL
    log4j.appender.PL=org.apache.log4j.DailyRollingFileAppender
    log4j.appender.PL.layout=org.apache.log4j.PatternLayout
    log4j.appender.PL.layout.ConversionPattern=%d %x - %m%n
    log4j.appender.PL.File=/var/log/app/web-tracking-log
    log4j.appender.PL.DatePattern='.'yyyy-MM-dd</p></blockquote>
