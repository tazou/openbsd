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
