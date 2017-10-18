
#wallpaper
mkdir -p ~/.wallpaper
cp -f ~/dotfiles/wallpaper/space.png ~/.wallpaper/space.png

cp -f ~/dotfiles/Xresources/.Xresources ~/.Xresources
echo ".Xresources replaced"


cp -f ~/dotfiles/compton/compton.conf ~/.config/compton.conf
echo "Compton replaced"

if [ -f ~/.config/i3/config ]
then
	cp -f ~/dotfiles/i3/config ~/.config/i3/config
	echo "i3 config replaced"
else 
	echo "i3 config not replaced"
fi

if [ -d ~/.oh-my-zsh/custom ]
then
	mkdir -p ~/.oh-my-zsh/custom/themes
	cp -f ~/dotfiles/oh-my-zsh/custom/themes/flat.zsh-theme ~/.oh-my-zsh/custom/themes/flat.zsh-theme
	echo "oh-my-zsh theme replaced"
else 
	echo "oh-my-zsh theme not replaced"
fi

mkdir -p ~/.config/polybar/
cp -f ~/dotfiles/polybar/config ~/.config/polybar/config
echo "polybar config replaced"

if [ -f ~/.zshrc ]
then
	cp -f ~/dotfiles/zsh/.zshrc ~/.zshrc
	echo ".zshrc replaced"
else 
	echo ".zshrc not replaced"
fi

#fonts
mkdir -p ~/.fonts
cp ~/dotfiles/fonts/* ~/.fonts
fc-cache -vf ~/.fonts