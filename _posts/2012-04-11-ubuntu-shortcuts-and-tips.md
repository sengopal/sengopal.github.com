---
layout: post
title: Topics for a java Interview
type: post
tags:
 - java
published: true
meta:
categories:
 - draft
---


Tools to Install
----------------
http://freshmeat.net/projects/dia/


sudo apt-get -y remove tomboy shotwell empathy evolution gwibber pitivi rhythmbox

# Install gimp, Chromium, VLC, Audacious, Pidgin, Geany
sudo apt-get -y install gimp chromium-browser vlc audacious pidgin geany


apt-get install chm2pdf


Tomcat in Apache
----------------
http://www.jajakarta.org/tomcat/tomcat3.2-4.0/tomcat-3.2.3/doc/tomcat-apache-howto.html
http://www.easywayserver.com/apache-tomcat-integration.html

Glassfish with Apache
----------------------
http://www.rizwan.in/node/10929

Grub 2
------
http://maketecheasier.com/mastering-grub-2-the-easy-way/2009/11/19
http://maketecheasier.com/create-and-install-your-own-grub-splash-image/2009/01/27


Ruby on Rails
---------------
First we need to install Ruby and irb (Interactive ruby shell) and we’ll add ri and rdoc. The recommended Ruby version for rails is 1.8.5.
sudo apt-get install ruby irb ri rdoc ruby1.8-dev2.2

Then we need to install RubyGems. We are going to install RubyGems with the following command
sudo apt-get install rubygems

Then we’ll update RubyGems with the following command
sudo gem update --systemNow

Now we will install rails with command
sudo gem install rails --include-dependencies

Thats it You have successfully installed Ruby on Rails.

To create new project type
rails name_of_app

To uninstall all first remove rails gem
sudo gem uninstall rails
and then uninstall rubygems and ruby
sudo apt-get remove rubygems ruby irb ri rdoc ruby1.8-dev


To Install RPM file
--------------------
sudo apt-get install alien
sudo alien -k filename.rpm - creates the deb file

To install BIN files
----------------------
sudo chmod +x filename.bin
./filename.bin

Installing a Tar.Gz Archive
----------------------------
extract
cd into the folder
program-installer. -> type in the Terminal: sh program-installer

Setting Up Lamp server
----------------------
sudo apt-get install lamp-server^
sudo apt-get install phpmyadmin
	Virtual Hosts
	-------------
		sudo a2enmod rewrite
		sudo /etc/init.d/apache2 restart
		Create a new folder in your home folder called www.
		cd /etc/apache2/sites-available
		sudo cp default andy.dev
		sudo gedit andy.dev	
				<VirtualHost *:80>
					ServerAdmin webmaster@localhost
					serverName your server name here
				 
					DocumentRoot /home/your name/www
					<Directory />
						Options FollowSymLinks
						AllowOverride All
					</Directory>
					<Directory /home/your name/www/>
						Options Indexes FollowSymLinks MultiViews
						AllowOverride All
						Order allow,deny
						allow from all
					</Directory>
				</VirtualHost>
		sudo a2ensite andy.dev
		
		sudo /etc/init.d/apache2 reload
		sudo gedit /etc/hosts
			Add 127.0.0.1  your server name (in my case it would be andy.dev)
			
		sudo /etc/init.d/apache2 reload
		
		http://andy.dev
		
		
Code for checking firewall settings in windows
----------------------------------------------
netstat -a -b

netsh advfirewall firewall show rule name=all > firewallrules.txt

netsh advfirewall firewall show rule name | find "Block"




































I recently came across this article, where a lot of these tips have been listed out. Please find below a little more details into the usage and how we can use them to improve our experience with Ubuntu.



Minors: 


2. gnome-app-install opens up add/remove program. 
3. sudo apt-get update (gets alll updates) 
6. sudo dpkg -i package_name.deb (install) 
7. /usr/lib/jvm/java-6-openjdk //java path 
/usr/bin/java 
10. synaptic & (open synaptic pkg mgr) 
sudo apt-get remove [--purge] firebirdâ€¦ [complete removal] 
11. ps aux | grep fire* 
13. sudo apt-get clean (cleans from /var/cache/apt/archives) 
15. despite asking to reboot, sometimes restarting inetd may suffice: 
kill -1 pid 
18. nautilus & â€”â€”â€”â€“ open file browser 
19. to install bin file: 
chmod a+x file.bin  
sudo ./file.bin 
21. to display size in mb 
sfdisk -luM 
22. /dev/sda2 /media/C: ntfs defaults 0 0 
/dev/sda3 /media/D: ntfs defaults 0 0 
now to remount all in fstab: 
mount -a 
23. /boot/grub/menu.lst 
24. to open Run : alt F2 
25. gnome-sound-properties 
28. gconf-editor (like regedit) 
29. gnome-control-center 
30. icons of installed apps in /usr/share/pixmaps 
/usr/share/app-install/icons 
31. check listening ports: 
netstat -antlp 
32. change default editor to scite 
sudo mv /etc/alternatives/gnome-text-editor /etc/alternatives/gnome-text-editor.old 
sudo ln -s /usr/bin/scite /etc/alternatives/gnome-text-editor 
33. -Djava.library.path= 34. updatedb to update file system in linux 
35. show/hide hidden files/folders ctrl H 
38. to start x 
startx 
41. if persisting dependency problem, run 
dpkg-reconfigure â€“all (it takes > half hr, and asks for a lot of conf params, so careful) 
43. to know usage of disks; 
df -h 
44. set beeps 
xset b on/off 
xset b 30 60 30 
47. to use sunâ€™s (openjdk) java in eclipse (default GNUâ€™s ); 
update-java-alternatives -s java-6-sun 
48. env vars in /etc/environment 
49. to find linked file 
ls -l /usr/bin/java 
now keep following the new link. 
52. view log while something going; 
tail -f /var/log/syslog 
54. change user of a file /folder: 
chown root myfolder // new user root 
chmod +s myfolder 
6. right list â€“ win + s 
left list â€“ alt + f1 
run â€“ alt + f2 
terminal â€“ ctrl alt t 
desktop â€“ ctrl alt d 
lock screen â€“ ctrl alt l 
7. enable ctrl alt bkspc 
system â€“ preference â€“ keyboard-layout-options-key sequence to kill x server 
8. rmmod b43 
depmod -a 
modprobe b43 // loads 
insmod b43 
echo modeprobe b43 >> /etc/rc.local //load as boot process 
10. apt-cache search libssl

11. install gyachi

add-apt-repository ppa:loell/ppa\ 
12. sudo getlibs /usr/bin/gyachi //may need to install getblibs first 
12. set default apps: 
~/.local/share/applications/defalult.list 
or for console 
update-alternatives â€“config editor 
14. install dependencies 
apt-get -f install

Below are some major tasks I did detail of which will be posted later when I have spare time.

Majors:

10. I have made linux shell available remotely using ftpd, ssh, apache http and ...1. Change of rootâ€™s user id.

2. Hide a user in login box.

3. To disable/enable graphical login (ie to have console for login in lieu of gui login box).

4. Recover deleted text using strings utility of linux.

5. After installing adobe air, synaptics pkg mgr may not work. I have fixed it.

6. I have Ubuntu LL with MAC theme, especial animation effects of my taste using compiz and AWN.

7. To configure startup menu on windows:

    bcdedit /default {id}
    bcdedit /timeout n
    bcdedit /displayorder {id1} {id2}8. ssh configuratioin

apt-get install openssh-server
cp /etc/ssh/sshd_config ~
gedit /etc/ssh/sshd_config
	Port 11
	PermitRootLogin no
	AllowUsers non-root
/etc/init.d/ssh restart
telnet localhost 11
ssh non-root@silver-box -p 11

9.ftpd configuration
install proftpd
in /etc/proftpd/proftpd.conf
	defaultroot  /home/shared
	allowuser	non-root
	denyall //other users
/etc/init.d/proftpd force-stop
