#!/bin/bash


declare options=("kitty
awesome
bash
broot
bspwm
conky
doom.d/config.el
doom.d/init.el
dunst
dwm
emacs.d/init.el
herbstluftwm
i3
i3blocks
i3status
picom
polybar
qtile
qutebrowser
spectrwm
st
surf
sxhkd
vifm
vim
website
xmobar
xmonad
xresources
zsh
quit")

# choice=$(echo -e "${options[@]}" | dmenu -c -g 1 -l 10 -i -fn 'Roboto Bold' -p 'Edit config file: ' -nb '#3b3b3b' -nf '#71988a' -sb '#000000' -sf '#71988a')
choice=$(echo -e "${options[@]}" | rofi -dmenu -p 'Edit config file: ')

case "$choice" in
	quit)
		echo "Program terminated." && exit 1
	;;
	alacritty)
		choice="$HOME/.config/alacritty.yml"
	;;
	awesome)
		choice="$HOME/.config/awesome/rc.lua"
	;;
	bash)
		choice="$HOME/.bashrc"
	;;
	broot)
		choice="$HOME/.config/broot/conf.toml"
	;;
	bspwm)
		choice="$HOME/.config/bspwm/bspwmrc"
	;;
    conky)
        choice="$HOME/.config/conky/conky.conf"
    ;;
    doom.d/config.el)
		choice="$HOME/.doom.d/config.el"
	;;
    doom.d/init.el)
		choice="$HOME/.doom.d/init.el"
	;;
	dunst)
		choice="$HOME/.config/dunst/dunstrc"
	;;
	dwm)
		choice="$HOME/dwm-6.2/config.h"
	;;
	emacs.d/init.el)
		choice="$HOME/.emacs.d/init.el"
	;;
	herbstluftwm)
		choice="$HOME/.config/herbstluftwm/autostart"
	;;
	i3)
		choice="$HOME/.config/i3/config"
	;;
    i3blocks)
        choice="$HOME/.config/i3blocks/config"
    ;;
    i3status)
        choice="$HOME/.config/i3status/config"
    ;;
	picom)
		choice="$HOME/.config/picom/picom.conf"
	;;
	polybar)
		choice="$HOME/.config/polybar/config"
	;;
	qtile)
		choice="$HOME/.config/qtile/config.py"
	;;
    qutebrowser)
        choice="$HOME/.config/qutebrowser/config.py"
    ;;
	spectrwm)
		choice="$HOME/.spectrwm.conf"
	;;
	st)
		choice="$HOME/st-0.8.4/config.h"
	;;
	sxhkd)
		choice="$HOME/.config/sxhkd/sxhkdrc"
	;;
	vim)
		choice="$HOME/.vimrc"
	;;
    website)
        choice="$HOME/website/HTML/"
    ;;
	xmobar)
		choice="$HOME/.config/xmobar/xmobarrc"
	;;
	xmonad)
		choice="$HOME/.xmonad/xmonad.hs"
	;;
	xresources)
		choice="$HOME/.Xresources"
	;;
	zsh)
		choice="$HOME/.zshrc"
	;;
	*)
		exit 1
	;;
esac
kitty -e nvim "$choice"
# emacsclient -c -a emacs "$choice"


