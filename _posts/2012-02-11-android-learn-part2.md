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