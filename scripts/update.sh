
dotdir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory

# i3
cp -f ~/.config/i3/config $dotdir/i3

# compton
cp -f ~/.config/compton.conf $dotdir/compton

# polybar
cp -f ~/.config/polybar/config $dotdir/polybar
cp -f ~/.config/polybar/launch.sh $dotdir/polybar

# xresources
cp -f ~/.Xresources $dotdir/Xresources

# zsh
cp -f ~/.zshrc $dotdir/zsh

# zsh theme
cp -f ~/.oh-my-zsh/custom/themes/flat.zsh-theme $dotdir/oh-my-zsh/custom/themes

# wallpaper