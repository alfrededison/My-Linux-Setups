#!/bin/bash

echo -e "\u001b[7m Install GUI and VNC...\u001b[0m"
pkg install -y x11-repo
pkg install -y tigervnc

echo -e "\u001b[7m Adding vnc session...\u001b[0m"
vncserver -localhost # press 'n'

printf "export DISPLAY=\":1\"\n" >> ${HOME}/.custom.zsh

echo -e "\u001b[7m Installing XFCE4...\u001b[0m"
pkg install -y xfce4
pkg install -y xfce4-terminal geany aterm

echo "" > ${HOME}/.vnc/xstartup
printf "#!/data/data/com.termux/files/usr/bin/sh\n" >> ${HOME}/.vnc/xstartup
printf "xfce4-session &\n" >> ${HOME}/.vnc/xstartup

echo -e "\u001b[7m Updating alias...\u001b[0m"
printf "alias vncstart=\"vncserver :1\"\n" >> ${HOME}/.custom.zsh
printf "alias vncstop=\"vncserver -kill :1\"\n" >> ${HOME}/.custom.zsh

echo -e "\u001b[7m Done! Use vncstart to start VNC session, and vncstop to stop it.\u001b[0m"
