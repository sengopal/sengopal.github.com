---
layout: post
title: Google gday in Chennai
type: post
tags:
 - google, conference
published: true
meta:
categories:
 - blog
---
#Google gday in Chennai
Google conducted its first ever gday in India and the first event was held in Chennai Trade Center, Nandambakkam, Chennai. It was a very good crowd of around 1300 technology aspirants ranging from students, freshers, professionals and business folks as well. The keynote was delivered with an enthusiasm of a company who has just released one of the most advanced and sophisticated operating system for mobile - Jelly Bean.

##Welcome Address and Keynote
The keynote was a great presentation about android, indian internet population and usage, google practices, about google developers group. The interesting practices stressed upon how speed does matter more than instant perfection and new applications should aim to launch fast and often

They also introduced the Chrome mobile and some of its abilities such as sync of tabs open on other devices and how web has evolved into a platform and browser as its OS. There was a Google Docs Collabaration demo where a document was being edited in parallel.

_Note to myself: checkout the app Beetlab from Chrome Web Store_

The keynote took a timeline view of how a day starts till end with various technologies working cohesively to achieve the task at hand such as multiple chrome tabs sync, chrome web store and google docs collab, reciept upload and search in images. There was also a Google+ angout demo and an introduction on the hangout apps

##Android 4.1 Jelly Bean Presentation - Divum Software
The folks from Divum software then presented about the key aspects of the latest Android 4.1 OS - the Jelly bean. They spoke about Project Butter which has enhanced even the performance in menus and chrome, about the support for local lanuguages which can even be pasted into messages as well, about Notifications
and its capabilities ranging upto giving a gallery view of images uploaded. They also spoke about the priority setup for notifications, widget height and width control. Then they introduced Google Now and even had a demo of using _Speak "Google" and ask the search term_.


##Android Development Workshop - 101
_By Divum_
Some of the topics covered were very basic and targetted for people who are very new to the Android platform. A simple run down list of topics covered were:

1. Android Fundamentals
     * os, middleware, list of apps, rich set of APIs
     * linux 2.6 not windows X
     * Android architecture diagram
2. Custom 2D and 3D graphics based on OpenGL ES
3. Camera, accelerometer, gyroscope etc.,
4. Each app is assigned with a unique 'user' ID
5. Run on unique virtual machine in isolation with other apps
6. Binary file is called '.apk'
7. Basic building blocks
    * activities == screens
    * views == layouts
    * intents == messages
    * services == bg tasks
    * notifications == events
    * content providers == to external app
    * AndroidManifest.xml == app config

8. Activities
    * represents a single screen 
    * LIFO

9. Views
    * user interfaces as views and view groups

10. Intents
    * messages within app and multiple apps

11. services
    * runs in background
    * long running processes
    * acivity can start and interact with the services
    * non user-interface related

12. notifications
    * broadcast reciever
    * responds to system wide communication
    * screen as turned off, battery low, network loss
    * alternatively app can initiate the broadcast
    * typically broadcast notifications are shown on status bar

13. content providers
    * manages shared application data
    * file system, persistent storage, SQLite
    * reading/writing data private to the app
    * shared data can be read and modified by multiple applications

14. manifest file
    * list of components
    * user permissions
    * app version, icons
    * declaration of hardware and software features like camera, network, libraries
    * constraints like resolution


###Some Code snippets
1. AndroidManifest.xml - only with a simple activity

2. Start Activity 
     * Managing the lifecycle of your activities by implementing callback methods is crucial to develop strong and flexible application
     * Activity lifecycle - onCreate, onStart, onResume
     * Hooks for bookkeeping
          1. Another activity comes to the foreground - onSaveInstanceState()
          2. onRestoreInstanceState() or onCreate() - can be used for resetting once the stored instance is brought back

3. Task and Back stack

4. UI Layouts
    * Linear Layout example
    * Any view object may have a unique ID
    * Uniquely identified within the view-tree
    * Event Listeners - onKeyUp, onKeyDown, onTouchEvent, onClick
    * menu action bar listeners

5. Common layouts
    * Tabular layout
    * Lineear Layout
    * Relative Layout

6. Google Services
    * c2dm
    * mobile analytics
    * admob
    * places
    * geocoding

##Android Development Workshop - Advanced
Some of the topics covered or demoed were:

###Connecting to a backend server
Important points to remember where How to choose a HTTP Client. Since Android provides its own implementation of  _HttpClient and HttpURLConnection_ which supports https as well. The application would need permissions in the manifest file for **INTERNET, ACCESS_NETWORK_STATE**
  
Some of the code snippets shown were about using the HttpClient to make an HTTPGet Request and get the data (using new DefaultHttpClient). The code snippets also explained about how to use the HttpResponse and converting into a valid String and using the JSONObject to extract the information from JSON based REST services. Also various XML Parsers available to Android application are DOM Parsers, SAX Parsers, PullParser[recommended] and XmlPullParser.

They also briefly touched upon Fragments which are single piece of code adaptable for various form factors and also about the fragment life cycle.

Some of the newly introduced ICS features were also explained such as Action Bar and Split Action Bar. Also the design paradigm behind the action bar was discussed using the YouTube App's UI Organization. The advantage of using a Stacked ActionBar which acts as a Action Bar + Tabs, it gets mashed into a single bar in a tablet or in the landscape mode.

##Google APIs for MAPS
The Google Maps API was a little too detailed session with less of demo and more of API detailing. They discussed about the **Google Maps Static API** and its various parameter needs and usage such as depending on https:// the parameters might be different and others. They also explained about the **Google Street View Image API** and the **Google Maps Javascript API V3**.

Some of the demos described about obtaining the API Key at <http://code.google.com/apis/comsole> and **Maps Events**. They also described about Overlays and Layers and how the prebuilt aspects such as markers, ploylines, polygons can be used. They also explained about Layers and how they reflect collection of objects that are added on top of the map for association such as weather, traffic, heat maps etc.,

They also briefly touched upon the Direction API, the distance matrix, the elevation data which can be used by trekking and hiking applications, geocoding and street view.

##HTML5
Guessing by the crowd, this was one of the most anticipated sessions of the day and it truly lived upto the expectations. 
The features were divided into 8 categories and presented.

####CSS3
Some of the features that were explained and demoed were **border-radius, HTML5 slider, box-shadow, text-shadow, text strokes**. Some of the obscure ones were **image cropping (using clip : rect), opacity, columns (using column-count,column-rule,column-gap)**. The demoes extended to **text-wrap (using text-overflow ellipsis,clip), gradients(linear or radial), reflection (box-reflect)**.

There were also demoes on transformations and transitions (this is the effect which describes the time to get the transformation) using **transform,translate,scale,rotate,skew**. They also walked us through creating full fledged animations using @keyframes.

####3D Graphics
There were great demoes on a **3D CSS cube, a CSS cubic bezier builder and a google chrome logo spin created using a bit of rendering using canvas and vector graphics using svg. There was also a quick note on putting text on a path using svg.

_Note to myself: Canvas needs js_

####Multimedia
Some demoes using the audio and video tags and fallbacks for formats.

####Connectivity
_Not sure what was demoed ???_

####Device Access
The folks explained about achieving native drag and drop and the usage of the File Systems API. There was a really cool demo of a Html5 terminal using file systems API and drag drop. There were also demoes about a web based file directory browser and a great demo on using the device orientation which feeds the parameters using alpha, beta and gamma. There were also demoes on how to use the _navigator, geolocation and xspeech_.

####Semantics
There were quite a few tags being introduced and other modifications to streamline the web such as new input types for color,date etc., and new input constraints. They also explained about the changes to the Selector API.

####Offline
They discussed briefly on the online and offline handlers network and local/session storage

####Performance and Integration
There was a simple demo of application cache and explanation about the Web sockets and the History API which can now push and pop states to govern the back button of the browser.

##Conclusion
All in all, it was a day well spent though many topics seemed targetted for a fresh audience rather than professionals. However, shedding some light into the content earlier and better facilities would surely make the next gday a grander success.
