---
layout: post
title: Google gday in Chennai
type: post
tags:
 - android
published: true
meta:
categories:
 - android
---
Hello Android Application creation steps

Create an android Project and just run without any changes 
Individual manufacturer specific emulator skins are available for downloads 
AndroidManifest.xml

Usage of @drawable, @string

Application Definition 
Activity Definition 
INTENT-FILTER 
Activity with "android.intent.action.MAIN" which will be started first 
"android.intent.category.LAUNCHER" adds the Application to the Apps Menu Launcher -- Is this correct??? 
Java packages available within Android SDK is not the exact same as Java SDK 
Activity Lifecycle

Always ensure super.onCreate is called. 
Res/layout - user interface definition using XML 
LinearLayout - Similar to Flow layout in AWT 
Fill_parent - will fill the entire vertical portion [ will not allow to place another component alongside] 
wrap_content - wrap the content and allows other components to be placed along side 
Activities, Services, Content Providers, BroadCast Recievers

Activity Structure [Check the Presentation] Notes only at missing in PPT stuff

Concrete Class, extends Activity, Needs Entry in AndroidManifest 
One Activity with IntentFilter MAIN 
A view hierarchy is placed in Activity using setContentView() 
Activity LifeCycle

onCreate() - View Creation

onStart() 

onResume()

Activity Lifecycle Diagram

Perform setView on onCreate as it needs to be done only once

What is a Bundle? - Similar to eBay V3 batch restarted data

Store Key-Pair value for retrieval in case of Dalvik VM stops and starts again calling onCreate () ---> Very Important

So always check for specific values in Bundle and then proceed.

Save the values using onStop() -> so that it picks when onCreate is called

Bundle will be stored in System Server

Multiple Screens can be shown using the same Activity -> Just by calling the setContentView - But navigation will be a problem 

1. Android Intents

1.1. Overview

Intents are asynchronous messages which allow Android components to request functionality from other components of the Android system. For example an Activity can send an Intents to the Android system which starts another Activity. 

Therefore Intents allow to combine loosely coupled components to perform certain tasks. 

Intents can be used to signal to the Android system that a certain event has occurred. Other components in Android can register to this event and will get notified. 

Intents are instances of the android.content.Intent class. 

Intents are send to the Android system. Depending on how the Intent was constructed the Android system will run an receiver determination and determine what to do. 

An Intent can also contain data. This data can be used by the receiving component. For example your application can calls via an Intent a browser component. As data is it may send the URL to the browser component. 

Android supports explicit and implicit Intents. 

1.2. Explicit Intents

Explicit Intents explicitly names the component which should be called by the Android system, by using the the Java class as identifier. 

The following shows an explicit Intent. If that Intent is correctly send to the Android system, it will start the associated class. 

Intent i = new Intent(this, ActivityTwo.class); 
i.putExtra("Value1", "This value one for ActivityTwo "); 
i.putExtra("Value2", "This value two ActivityTwo");

Explicit Intents are typically used within on application as the classes in an application are controlled by the application developer. 

1.3. Implicit Intents

Implicit Intents do not specify the Java class which should be called. They specify the action which should be performed and optionally an URI which should be used for this action. 

For example the following tells the Android system to view a webpage. Typically the web browser is registered to this Intent but other component could also register themself to this event. 

Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse("http://www.vogella.de"));

If these Intents are send to the Android system it searches for all components which are registered for the specific action and the data type. 

If only one component is found, Android starts this component directly. If several components are identifier by the Android system, the user will get an selection dialog and can decide which component should be used for the Intent. 
