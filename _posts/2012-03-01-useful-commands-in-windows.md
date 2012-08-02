---
layout: post
title: Some useful command line tools in Windows
type: post
tags:
 - windows, tools
published: true
meta:
categories:
 - blog
---
Recently came across this suprising list of command line tools in Windows. I have used some of them and looking forward to use others as well. The below given commands are targeted for 32-bit OS.


1. **EUDCEDIT** - Private Character Editor

2. **iexpress** - for conerting your files to EXCUTABLE files

3. **cleanmgr** - cleaning harddisk to offer space

4. **drwtsn32** - repairing problems in Windows

5. **mplay32** - Windows Media Player

6. **charmap** - Character Map

7. **dxdiag** - DirectX diagnosis

8. **packager** - Object Packager

9. **perfmon** - System Monitor

10. **progman** - Program Manager

11. **rasphone** - Remote Access phone book

12. **regedt32** - Registry Editor

13. **sigverif** - File siganture verification tool

14. **sndvol32** - Volume Control

15. **sysedit** - System Configuration Editor

16. **syskey** - Syskey

17. **telnet** - Microsoft Telnet Client

18. **Code for checking firewall settings in windows**


```

	netstat -a -b

	netsh advfirewall firewall show rule name=all > firewallrules.txt
	
	netsh advfirewall firewall show rule name | find "Block"
```	