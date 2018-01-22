# Dotfiles :cat:

## Overview

This is my linux ubuntu dotfiles

![Screenshot of screenfetch](https://raw.githubusercontent.com/olivbau/dotfiles/master/screenshots/18_10_2017_19_08_26.png)

### Configuration

* Shell: zsh
* WM: i3-gaps
* GTK Theme: Arc-Dark
* Icon Theme: Papirus
* Font: Roboto 10

### Packages Ubuntu (17.04)

* rofi
* i3
* rxvt-unicode
* compton
* fonts-roboto
* zsh
* arc-theme
* lxappearance
* feh
* fonts-font-awesome

```shell
sudo apt-get install rofi i3 rxvt-unicode compton fonts-roboto zsh arc-theme lxappearance feh fonts-font-awesome git
```

### Other Packages

* [i3-gaps](https://github.com/Airblader/i3)
* [polybar](https://github.com/jaagr/polybar)
* [papirus icons theme](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)
* [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)

*See section bellow to install them*

## Installation

### Install Packages

#### 1. Install official packages

```shell
sudo apt-get install rofi i3 rxvt-unicode compton fonts-roboto zsh arc-theme lxappearance feh fonts-font-awesome git
```

#### 2. Change Windows Manager

Logout and Switch to i3

Generate default config

#### 3. Install i3-gaps

[reference](https://github.com/Airblader/i3/wiki/Compiling-&-Installing)

```shell
#install dep
sudo apt-get install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf libxcb-xrm0 libxcb-xrm-dev automake

cd ~/
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps
autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install
```

#### 4. Install polybar

[reference](https://github.com/jaagr/polybar#building-from-source)

```shell
wget -q -O - http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add -
sudo sh -c 'echo "deb http://archive.getdeb.net/ubuntu xenial-getdeb apps" >> /etc/apt/sources.list.d/getdeb.list'
sudo apt-get update
sudo apt-get install polybar
```

#### 5. Install Papirus

[reference](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme#installation)

```shell
sudo add-apt-repository ppa:papirus/papirus
sudo apt-get update
sudo apt-get install papirus-icon-theme
```

#### 6. Install Oh My Zsh

[reference](https://github.com/robbyrussell/oh-my-zsh/blob/master/README.md#basic-installation)

```shell
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
```

#### 7. run lxappearance

1. Widget (Arc-Dark Roboto 10)

   ![lxappearence ](https://github.com/olivbau/dotfiles/blob/master/screenshots/18_10_2017_19_10_58.png?raw=true)

   ​

2. Icon Theme (Papirus)

   ![lxappearence ](https://github.com/olivbau/dotfiles/blob/master/screenshots/18_10_2017_19_10_11.png?raw=true)



#### 8. Run load script

⚠️ Save your dotfiles before !!

```shell
git clone https://github.com/olivbau/dotfiles.git ~/dotfiles
sh ~/dotfiles/scripts/load.sh
```

####9. Run load script

Logout and login and :bomb::boom:

### Copy dotfiles

Two main methods:

1. Use dotfiles from this rep

2. Use script

   `sh ./scripts/load.sh`

### Tips

* Refresh i3: `win+shift+r`
* Refresh .Xresources: `source ~/.Xresources`
* Set zsh as default shell: `chsh` and write `/bin/zsh`

## Screenshots

![desktop](https://github.com/olivbau/dotfiles/blob/master/screenshots/18_10_2017_14_05_05.png?raw=true)

![desktop](https://github.com/olivbau/dotfiles/blob/master/screenshots/18_10_2017_16_04_50.png?raw=true)

![desktop](https://github.com/olivbau/dotfiles/blob/master/screenshots/18_10_2017_16_05_52.png?raw=true)

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## Credits

TODO: Write credits
