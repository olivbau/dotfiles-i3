#rofi
#rxvt-unicode
#compton
#lxappearance
#feh
	polybar
#fonts-font-awesome
papirus-icon-theme
#arc-theme
#fonts-roboto
#git 
#zsh
i3-gaps


cd ~/

#Ubuntu Repo
sudo apt-get install -y git i3 zsh fonts-roboto arc-theme lxappearance feh rofi rxvt-unicode compton fonts-font-awesome

#papirus
sudo add-apt-repository ppa:papirus/papirus

#i3-gaps
sudo apt-get install -y libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf libxcb-xrm0 libxcb-xrm-dev automake
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps
autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/
make
sudo make install
cd ~/

#polybar 
wget -q -O - http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add -
sudo sh -c 'echo "deb http://archive.getdeb.net/ubuntu zesty-getdeb apps" >> /etc/apt/sources.list.d/getdeb.list'

sudo apt-get update
sudo apt-get install papirus-icon-theme polybar