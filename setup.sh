#!/bin/sh

# Setup an OpenBSD Desktop

myuser='gui'

pkg_add -v vim git bash

#MATE Desktop
#pkg_add mate
#for p in $(pkg_info -Q mate|grep ^mate|grep -v installed|tr '\n' ' ');do pkg_add $p;done

# XFCE Desktop
pkg_add -iv xfce

# Additionals
pkg_add -v mozilla-dicts-fr

echo "export LC_CTYPE='en_US.UTF-8'" >> /home/$myuser/.xsession
echo "export LC_CTYPE='en_US.UTF-8'" >> /home/$myuser/.profile
#echo "exec mate-session" >> /home/$myuser/.xsession
echo "exec xfce4-session" >> /home/$myuser/.xsession

# CWM
# echo "xsetroot -solid lightblue &" > /home/$myuser/.xsession
# echo "#exec cwm" >> /home/$myuser/.xsession
# cp dot.cwmrc /home/$myuser/.cwmrc
#chown $myuser:$myuser /home/$myuser/.cwmrc

# Permissions
chown $myuser:$myuser /home/$myuser/.xsession
chown $myuser:$myuser /home/$myuser/.profile

echo "set timeout 1" > /etc/boot.conf

# echo "xterm*font:     *-fixed-*-*-*-18-*" > /home/$myuser/XTerm
# chown $myuser:$myuser /home/$myuser/XTerm

# X11: If you use VirtualBox
# echo "If you are in VirtualBox, you need to use the video drive VMSVGA"
# echo "On hypervizor, configure screen resolution with: VBoxManage setextradata 'openbsd75' CustomVideoMode1 1920x1080x32"
# cp 00-virtualbox-monitor.conf /usr/X11R6/share/X11/xorg.conf.d/
