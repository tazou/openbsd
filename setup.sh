#!/bin/sh

#Setup OpenBSD Desktop

monuser='gui'

pkg_add vim git bash

echo "xsetroot -solid lightblue &" > /home/$monuser/.xsession
echo "export LC_CTYPE='en_US.UTF-8'" >> /home/$monuser/.xsession
echo "export LC_CTYPE='en_US.UTF-8'" >> /home/$monuser/.profile
echo "exec cwm" >> /home/$monuser/.xsession

cp dot.cwmrc /home/$monuser/.cwmrc
chown $monuser:$monuser /home/$monuser/.cwmrc

echo "set timeout 1" > /etc/boot.conf

echo "xterm*font:     *-fixed-*-*-*-18-*" > /home/$monuser/XTerm
chown $monuser:$monuser /home/$monuser/.XTerm

#X11
echo "Il faut utiliser pour la VM OpenBSD dans VirtualBox le drier video VMSVGA."
echo "Sur l'hôte VirtualBox faire : VBoxManage setextradata 'openbsd65' CustomVideoMode1 1920x1080x32"
cp 00-virtualbox-monitor.conf /usr/X11R6/share/X11/xorg.conf.d/
