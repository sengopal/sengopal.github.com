title=Java CLI Commands
date=2015-05-20
tags=android
slug=java-cli-commands
summary=Java CLI Commands
category=Java
author=Senthilkumar Gopal
type=post
status=draft
~~~~~~


Java Commands

basic
java
javac
jar
javadoc
javah
javap
appletviewer
jdeps
extcheck
jdb

Security
keytool
jarsigner
policytool
kinit
klist
ktab

CORBA and IDL
idlj
orbd
tnameserv

Monitoring
jps
jcmd
jstat
jstatd

Troubleshooting
jinfo
jmap
jstack
jhat
jcmd
jsadebugd

Native
	Windows
	dumpchk
	msdev
	windbg
	HPROF
	
	Linux
	gbd
	ltrace
	ptrace
	HPROF
	
Attach
	API Provided by JDK to connect to running JVM
	Local access by same user
	Utilized by jinfo, jcmd, jstack, jmap
	Mechanics differ by platform

jvmstat
	Lightweight perf. mon by JVM
	Built in instrumentation by default
		Turn off with -XX:-UsePrefData
	$TMP_DIR/hsperfdata_username/pid
		Memory mapped file
		Continously updated by JVM
		
	
