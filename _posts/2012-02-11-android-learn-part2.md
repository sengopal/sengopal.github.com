---
layout: post
title: Android App Development–Part 2
tags:
- android
- basics
- learning
type: post
published: true
meta:
categories:
 - blog
---
##Hello Android Application creation steps
1. Create an android Project and just run without any changes 
2. Individual manufacturer specific emulator skins are available for downloads 

###AndroidManifest.xml
1. Usage of @drawable, @string
2. Application Definition 
3. Activity Definition 

####INTENT-FILTER 

1. Activity with `android.intent.action.MAIN` which will be started first 
2. `android.intent.category.LAUNCHER` adds the Application to the Apps Menu Launcher
3. Java packages available within Android SDK is not the exact same as Java SDK 

####Activity Lifecycle

1. Always ensure super.onCreate is called. 
2. Res/layout - user interface definition using XML 
3. LinearLayout - Similar to Flow layout in AWT 
4. Fill_parent - will fill the entire vertical portion \[will not allow to place another component alongside\] 
5. wrap_content - wrap the content and allows other components to be placed along side 
6. Activities, Services, Content Providers, BroadCast Recievers

####Activity Structure

1. Concrete Class, extends Activity, Needs Entry in AndroidManifest 
2. One Activity with IntentFilter MAIN 
3. A view hierarchy is placed in Activity using setContentView() 

####Activity LifeCycle

1. onCreate() - View Creation
2. onStart() 
3. onResume()

####Activity Lifecycle Diagram

1. Perform setView on onCreate as it needs to be done only once
2. What is a Bundle? - Similar to eBay V3 batch restarted data
3. __Store Key-Pair value for retrieval in case of Dalvik VM stops and starts again calling onCreate ()__
4. So always check for specific values in Bundle and then proceed.
5. Save the values using onStop(), so that it picks when onCreate is called
6. Bundle will be stored in System Server
7. Multiple Screens can be shown using the same Activity. _Just by calling the setContentView_ - _But navigation will be a problem_

###Android Intents

####Overview
Intents are asynchronous messages which allow Android components to request functionality from other components of the Android system. For example an Activity can send an Intents to the Android system which starts another Activity. Therefore Intents allow to combine loosely coupled components to perform certain tasks. Intents can be used to signal to the Android system that a certain event has occurred. Other components in Android can register to this event and will get notified. Intents are instances of the `android.content.Intent` class. Intents are send to the Android system. Depending on how the Intent was constructed the Android system will run an receiver determination and determine what to do. 

   An Intent can also contain data. This data can be used by the receiving component. For example your application can calls via an Intent a browser 
component. As data is it may send the URL to the browser component. Android supports explicit and implicit Intents. 

####Explicit Intents

Explicit Intents explicitly names the component which should be called by the Android system, by using the the Java class as identifier. The following shows an explicit Intent. If that Intent is correctly send to the Android system, it will start the associated class. 

{% highlight java %}
	Intent i = new Intent(this, ActivityTwo.class); 
	i.putExtra("Value1", "This value one for ActivityTwo "); 
	i.putExtra("Value2", "This value two ActivityTwo");
{% endhighlight %}

Explicit Intents are typically used within on application as the classes in an application are controlled by the application developer. 

####Implicit Intents

Implicit Intents do not specify the Java class which should be called. They specify the action which should be performed and optionally an URI which should be used for this action. For example the following tells the Android system to view a webpage. Typically the web browser is registered to this Intent but other component could also register themself to this event. 

{% highlight java %}
	Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse("http://www.vogella.de"));
{% endhighlight %}

If these Intents are send to the Android system it searches for all components which are registered for the specific action and the data type. 

If only one component is found, Android starts this component directly. If several components are identifier by the Android system, the user will get an selection dialog and can decide which component should be used for the Intent. 
