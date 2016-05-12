# install firefox
yum install -y xorg-x11-server-Xvfb firefox gdk-pixbuf2

# install chrome
wget http://chrome.richardlloyd.org.uk/install_chrome.sh
chmod u+x install_chrome.sh
./install_chrome.sh -f
