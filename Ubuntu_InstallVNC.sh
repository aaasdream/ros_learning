#http://www.jeepxie.net/article/898910.html

sudo apt-get install xorg lxde-core lxterminal tightvncserver
tightvncserver :1
tightvncserver -kill :1
#~/.vnc/xstartup文件，在尾部添加:
echo "lxterminal &" >> ~/.vnc/xstartup
echo "/usr/bin/lxsession -s LXDE &" >> ~/.vnc/xstartup
echo "vncserver -geometry 1280x720" >> ~/.bashrc
vncserver -geometry 1280x720
