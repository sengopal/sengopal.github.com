---
layout: post
title: Collection of useful java code snippets
type:post
tags:
- java
status: publish
published: true
meta:
categories:
 - blog
---
###For Sending a POST request###

**Code snippet for making a HTTP call**

    import java.io.IOException;
    import java.io.OutputStreamWriter;
    import java.net.HttpURLConnection;
    import java.net.URL;
    public class Test {
    	public static void main(String[] args) throws IOException {
    		URL url = new URL("<a href="http://localhost:8080/resttest/services/Order/3");
    		HttpURLConnection httpCon = (HttpURLConnection) url.openConnection();
    		httpCon.setDoOutput(true);       
    		httpCon.setRequestMethod("POST");       
    		OutputStreamWriter out = new OutputStreamWriter(httpCon.getOutputStream());        
    		System.out.println(httpCon.getResponseCode());        
    		System.out.println(httpCon.getResponseMessage());        
    		out.close(); 
    	}
    }


**Static Block and main()**

Before calling main, the static block for the class is called to initialize the class.

    public class Main {
    	static {        
    		System.out.println("Called first.");        
    	}       
    	public static void main(String... args) {        
    		System.out.println("Hello world.");        
    	}       
    }

_Output:_

Called first.
Hello world.

**Code without main()**

Normally, if you don't have a main() method, you will get an error. However if your program exits before calling main() no error is produced.

	public class Main {
		static {        
			System.out.println("Hello world.");
			System.exit(0);
		}
	}

_Output:_

Hello world.

**premain**

If you have Java agents, those agents can have a premain method which is called first. [Instrument package](http://download.oracle.com/javase/6/docs/api/java/lang/instrument/package-summary.html)

	public static void premain(String agentArgs, Instrumentation inst);

The Instrumentation class gives the agent access to each class' byte code after it is read and before it is linked, giving the agent the option to change byte code. One interesting feature of the Instrumentation class is the getObjectSize() which will give you the size of an object.