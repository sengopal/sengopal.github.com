title=50 Ubuntu shortcuts and tips
date=2012-04-11
tags=ubuntu, nontech
slug=ubuntu-shortcuts-and-tips
summary=Some tips and shortcuts for development in Ubuntu
category=Utilities
author=Senthilkumar Gopal
type=post
status=published
~~~~~~

These are various tips, tricks, changes to make ubuntu better. Obviously these are plagarized from various forums and posts _and i will be happy to provide attribution if you contact me._

###Customizing the Grub 2
1. http://maketecheasier.com/mastering-grub-2-the-easy-way/2009/11/19
2. http://maketecheasier.com/create-and-install-your-own-grub-splash-image/2009/01/27

###Installing Ruby on Rails
1. sudo apt-get install ruby irb ri rdoc ruby1.8
2. sudo apt-get install rubygems
3. sudo gem update --systemNow
4. sudo gem install rails --include-dependencies
5. rails name_of_app - To create new project type

###Uninstalling ROR
1. sudo gem uninstall rails
2. sudo apt-get remove rubygems ruby irb ri rdoc ruby1.8

###To Install RPM file
1. sudo apt-get install alien
2. sudo alien -k filename.rpm - creates the deb file

###To install BIN files
1. sudo chmod +x filename.bin
2. ./filename.bin

###Installing a Tar.Gz Archive
1. extract
2. cd into the folder
3. program-installer. -> type in the Terminal: sh program-installer

###Setting Up Lamp server
1. sudo apt-get install lamp-server^
2. sudo apt-get install phpmyadmin

###Configuring Virtual Hosts
1. sudo a2enmod rewrite
2. sudo /etc/init.d/apache2 restart
3. Create /home/sengopal/www
4. cd /etc/apache2/sites-available
5. sudo cp default local.dev
6. sudo gedit local.dev

```xml
        <VirtualHost *:80>
            ServerAdmin webmaster@localhost
            serverName your server name here
            DocumentRoot /home/sengopal/www
            <Directory />
                Options FollowSymLinks
                AllowOverride All
            </Directory>
            <Directory /home/sengopal/www>
                Options Indexes FollowSymLinks MultiViews
                AllowOverride All
                Order allow,deny
                allow from all
            </Directory>
        </VirtualHost>
```

7. sudo a2ensite local.dev
8. sudo /etc/init.d/apache2 reload
9. sudo gedit /etc/hosts - `127.0.0.1  local.dev`
10. sudo /etc/init.d/apache2 reload
11. http://local.dev


###Configuring SSH
1. apt-get install openssh-server
2. cp /etc/ssh/sshd_config ~
3. gedit /etc/ssh/sshd_config

```text
        Port 22
        PermitRootLogin no
        AllowUsers non-root
```

4. /etc/init.d/ssh restart
5. telnet localhost 22
6. ssh non-root@machine -p 22

###Simple Commands
1. gnome-app-install
2. sudo apt-get update
3. sudo dpkg -i package_name.deb
4. `sudo apt-get remove [--purge] <package> ¦ [complete removal] `
5. ps aux | grep fire*
6. sudo apt-get clean
7. nautilus
8. sfdisk -luM
9. Alt + F2
10. gconf-editor
11. netstat -antlp
12. CTRL + H (nautilius)
13. dpkg-reconfigure -all
14. df -h
15. update-java-alternatives -s java-6-sun
16. env vars in /etc/environment
17. tail -f /var/log/syslog
18. change user of a file /folder:
19. CTRL + ALT + T - Terminal
20. CTRL + ALT + D - Desktop
21. CTRL + ALT + L - Lock screen
22. `apt-cache search <package>`
23. `sudo add-apt-repository ppa:<repo-name>`
24. ~/.local/share/applications/default.list
