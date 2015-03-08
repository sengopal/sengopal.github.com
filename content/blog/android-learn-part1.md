title=Android Application development notes - Part 1
date=2012-01-09
tags=android
slug=android-learn-part1
summary=Android application development notes part 1
category=Android
author=Senthilkumar Gopal
type=post
status=published
~~~~~~

Today I am starting with a new series for learning application development in Android. This series will have five parts and will consists of all the basics that someone needs to understand, learn and kick start developing using Android.

###What is Android?
Android is an operating system primarily for mobile devices created by Andy Rubin, the owner of Android Inc. It is being developed by OHA [Open Handset Alliance], a non-profit organization created in 2007 by around 79 companies which include contributions from software, hardware and device management corporations. The first Android phone was introduced by HTC in 2008 and the recent one being the Samsung Galaxy Nexus in late 2011.

<a href="http://upload.wikimedia.org/wikipedia/commons/a/a1/Android_home.png" target="_blank"><img src="http://upload.wikimedia.org/wikipedia/commons/a/a1/Android_home.png" width="231" height="383" /></a>
<a href="http://upload.wikimedia.org/wikipedia/commons/e/e7/Android_4.0.png" target="_blank"><img style="margin: 0px 0px 0px 90px" src="http://upload.wikimedia.org/wikipedia/commons/e/e7/Android_4.0.png" width="217" height="385" /></a>


###Design
Android is a Linux based operating system customized to primarily work with mobile devices. The architecture/design of the Android ecosystem consists of the **Linux Kernel** which takes care of the device drivers, the **Libraries** such as Surface managers, LIBC written in C / C++,** Application framework** which exposes the handlers for creating custom applications, **Android Runtime **which contains the Core Libraries [written in Java] and the custom made **Dalvik Virtual Machine **which reads the DEX files [dalvik executable]

<a href="http://en.wikipedia.org/wiki/File:System-architecture.jpg" target="_blank"><img src="http://upload.wikimedia.org/wikipedia/commons/6/63/System-architecture.jpg" width="548" height="394" /></a>

###Concept of DEX
The Android toolkit compiler takes care of compiling, building and packaging the applications created using the application framework. The advent of .dex files saves the creation of hundreds of class files and generates one single dex file for an application. The drawback of this approach is that normal JAR files will not work in Android JVM, they need to be built again to ensure it works similar to how the "Core Libraries" have been created from source.

##Boot up Sequence
Though Android is built on Linux Kernel, it does not follow the same boot up sequence of the Linux kernel. On powering up, the bootloader reads the OS from ROM and loads into RAM. Then the init() of the linux kernel is invoked which loads these main four background[Daemon] processes.
1. USB daemon
2. Android Debug Bridge
3. Debugger Daemon
4. Radio Interface Layer Daemon

After the daemon process, Android Runtime and Zygote [MASTER DALVIK VM] will then be started. Zygote will create individual Dalvik VMs for every application. The philosophy behind the Dalvik JVM creation is that every application will run in its own DVM wherein around 15-30 MB of RAM space for a DVM Process will be allocated. When there is a shortage of memory, the Zygote finds the Least Used Application, terminates and reclaims the RAM space. The System Server process is never terminated ahead of application space. Because of this termination/reclaiming process, application state storage/retrieval, needs to be built into the application itself.

###Android SDK
The first Android version was released in 2008 called Apple pie with the latest version being called the “Ice cream sandwich” with version 4.0. The full list of Android releases and the supported features is available [here](http://socialcompare.com/en/comparison/android-versions-comparison). Some of the modern usage of the Android application development tools involve jQuery Mobile, HTML 5 using the Webkit introduced with Android Gingerbread. More detailed developer videos are available at <http://developer.android.com/videos/index.html>
