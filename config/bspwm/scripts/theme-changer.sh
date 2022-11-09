#!/bin/bash

declare -a options=(
  "Latte"
  "Mocha"
  "Frappe"
  "Macchiato"
  "ZorinDark"
  "ZorinLight"
  "DecayCE"
  "Dark Decay"
  "Light Decay"
  "Decay"
  "------------"
  "Zen Mode"
  "Partial Zen Mode"
  "Regular Mode"
  "Vertical Bar Mode"
  "Quit"
)

choice=$(printf '%s\n' "${options[@]}" | rofi -dmenu -i -l 16 -p 'Change Global Theme:' -theme ~/.config/bspwm/rofi/config/launcher.rasi)
polybar="$HOME/.config/bspwm/polybar/config.ini"
dock="$HOME/.config/bspwm/bottom_dock/config.ini"
alacritty="$HOME/.config/bspwm/alacritty/colors.yml"
gtk="$HOME/.config/gtk-3.0/settings.ini"
gtkrc="$HOME/.gtkrc-2.0"
alternate_polybar="$HOME/.config/bspwm/polybar/alternate_polybar/config.ini"
alternate_dock="$HOME/.config/bspwm/polybar/alternate_polybar/bottom_dock/config.ini"
bspwmrc="$HOME/.config/bspwm/bspwmrc"
ewwBarSCSS="$HOME/.config/bspwm/eww/bar/eww.scss"
ewwBarYUCK="$HOME/.config/bspwm/eww/bar/eww.yuck"

case $choice in
  'Latte')
    # ---POLYBAR--- 
    sed -i '/~\/.config\/bspwm\/polybar\/colors/c\include-file=~\/.config\/bspwm\/polybar\/colors\/latte.ini' $polybar
    sed -i '/~\/.config\/bspwm\/bottom_dock\/colors/c\include-file=~\/.config\/bspwm\/bottom_dock\/colors\/latte.ini' $dock
    # --- ALTERNATE POLYBAR---
    sed -i '/~\/.config\/bspwm\/polybar\/alternate_polybar\/colors/c\include-file=~\/.config\/bspwm\/polybar\/alternate_polybar\/colors\/latte.ini' $alternate_polybar
    sed -i '/~\/.config\/bspwm\/polybar\/alternate_polybar\/bottom_dock\/colors/c\include-file=~\/.config\/bspwm\/polybar\/alternate_polybar\/bottom_dock\/colors\/latte.ini' $alternate_dock
    # ---EWW---
    sed -i "/@import/c\@import 'colors/latte';" $ewwBarSCSS
    # ---ALACRITTY---
    sed -i '/colors: */c\colors: *latte' $alacritty
    # ---GTK---
    sed -i '/gtk-theme-name=/c\gtk-theme-name=Catppuccin-Latte' $gtk $gtkrc
    # ---CONKY---
    sed -i '/.config\/conky/c\~\/.config\/conky\/Mimosa-Light\/start.sh &' $bspwmrc
    # ---BSPWM---
    bspc wm -r
    # ---BACKGROUND---
    echo 'feh --bg-fill ~/.config/bspwm/wallpapers/pinksky4k.png' > ~/.fehbg 
    ;;
  'Mocha')
    # ---POLYBAR---
    sed -i '/~\/.config\/bspwm\/polybar\/colors/c\include-file=~\/.config\/bspwm\/polybar\/colors\/mocha.ini' $polybar
    sed -i '/~\/.config\/bspwm\/bottom_dock\/colors/c\include-file=~\/.config\/bspwm\/bottom_dock\/colors\/mocha.ini' $dock
    # --- ALTERNATE POLYBAR---
    sed -i '/~\/.config\/bspwm\/polybar\/alternate_polybar\/colors/c\include-file=~\/.config\/bspwm\/polybar\/alternate_polybar\/colors\/mocha.ini' $alternate_polybar
    sed -i '/~\/.config\/bspwm\/polybar\/alternate_polybar\/bottom_dock\/colors/c\include-file=~\/.config\/bspwm\/polybar\/alternate_polybar\/bottom_dock\/colors\/mocha.ini' $alternate_dock
    # ---EWW---
    sed -i "/@import/c\@import 'colors/mocha';" $ewwBarSCSS
    # ---ALACRITTY---
    sed -i '/colors: */c\colors: *mocha' $alacritty
    # ---GTK---
    sed -i '/gtk-theme-name=/c\gtk-theme-name=Catppuccin-Mocha' $gtk
    # ---CONKY---
    sed -i '/.config\/conky/c\~\/.config\/conky\/Mimosa-Dark\/start.sh &' $bspwmrc
    # ---BSPWM---
    bspc wm -r
    # ---BACKGROUND---
    echo 'feh --bg-fill ~/.config/bspwm/wallpapers/cyberpunk_car_background.jpg' > ~/.fehbg
    ;;
  'Frappe')
    # ---POLYBAR---
    sed -i '/~\/.config\/bspwm\/polybar\/colors/c\include-file=~\/.config\/bspwm\/polybar\/colors\/frappe.ini' $polybar
    sed -i '/~\/.config\/bspwm\/bottom_dock\/colors/c\include-file=~\/.config\/bspwm\/bottom_dock\/colors\/frappe.ini' $dock
    # --- ALTERNATE POLYBAR---
    sed -i '/~\/.config\/bspwm\/polybar\/alternate_polybar\/colors/c\include-file=~\/.config\/bspwm\/polybar\/alternate_polybar\/colors\/frappe.ini' $alternate_polybar
    sed -i '/~\/.config\/bspwm\/polybar\/alternate_polybar\/bottom_dock\/colors/c\include-file=~\/.config\/bspwm\/polybar\/alternate_polybar\/bottom_dock\/colors\/frappe.ini' $alternate_dock
    # ---EWW---
    sed -i "/@import/c\@import 'colors/frappe';" $ewwBarSCSS
    # ---ALACRITTY---
    sed -i '/colors: */c\colors: *frappe' $alacritty
    # ---GTK---
    sed -i '/gtk-theme-name=/c\gtk-theme-name=Catppuccin-Frappe' $gtk
    # ---CONKY---
    sed -i '/.config\/conky/c\~\/.config\/conky\/Mimosa-Dark\/start.sh &' $bspwmrc
    # ---BSPWM---
    bspc wm -r
    # ---BACKGROUND---
    echo 'feh --bg-fill ~/.config/bspwm/wallpapers/blossom.png' > ~/.fehbg
    ;;
  'Macchiato')
    # ---POLYBAR---
    sed -i '/~\/.config\/bspwm\/polybar\/colors/c\include-file=~\/.config\/bspwm\/polybar\/colors\/macchiato.ini' $polybar
    sed -i '/~\/.config\/bspwm\/bottom_dock\/colors/c\include-file=~\/.config\/bspwm\/bottom_dock\/colors\/macchiato.ini' $dock
    # --- ALTERNATE POLYBAR---
    sed -i '/~\/.config\/bspwm\/polybar\/alternate_polybar\/colors/c\include-file=~\/.config\/bspwm\/polybar\/alternate_polybar\/colors\/macchiato.ini' $alternate_polybar
    sed -i '/~\/.config\/bspwm\/polybar\/alternate_polybar\/bottom_dock\/colors/c\include-file=~\/.config\/bspwm\/polybar\/alternate_polybar\/bottom_dock\/colors\/macchiato.ini' $alternate_dock
    # ---EWW---
    sed -i "/@import/c\@import 'colors/macchiato';" $ewwBarSCSS
    # ---ALACRITTY---
    sed -i '/colors: */c\colors: *macchiato' $alacritty
    # ---GTK---
    sed -i '/gtk-theme-name=/c\gtk-theme-name=Catppuccin-Macchiato' $gtk
    # ---CONKY---
    sed -i '/.config\/conky/c\~\/.config\/conky\/Mimosa-Dark\/start.sh &' $bspwmrc
    # ---BSPWM---
    bspc wm -r
    # ---BACKGROUND---
    echo 'feh --bg-fill ~/.config/bspwm/wallpapers/pinksky4k.png' > ~/.fehbg
    ;;
  'ZorinDark')
    # ---GTK---
    sed -i '/gtk-theme-name=/c\gtk-theme-name=ZorinGrey' $gtkrc
    sed -i '/gtk-icon-theme-name=/c\gtk-icon-theme-name=oomox-aesthetic-dark' $gtkrc
    sed -i '/gtk-theme-name=/c\gtk-theme-name=ZorinGrey' $gtk
    sed -i '/gtk-icon-theme-name=/c\gtk-icon-theme-name=oomox-aesthetic-dark' $gtk
    # ---POLYBAR---
    sed -i '/~\/.config\/bspwm\/polybar\/colors/c\include-file=~\/.config\/bspwm\/polybar\/colors\/mocha.ini' $polybar
    sed -i '/~\/.config\/bspwm\/bottom_dock\/colors/c\include-file=~\/.config\/bspwm\/bottom_dock\/colors\/mocha.ini' $dock
    # --- ALTERNATE POLYBAR---
    sed -i '/~\/.config\/bspwm\/polybar\/alternate_polybar\/colors/c\include-file=~\/.config\/bspwm\/polybar\/alternate_polybar\/colors\/mocha.ini' $alternate_polybar
    sed -i '/~\/.config\/bspwm\/polybar\/alternate_polybar\/bottom_dock\/colors/c\include-file=~\/.config\/bspwm\/polybar\/alternate_polybar\/bottom_dock\/colors\/mocha.ini' $alternate_dock
    # ---EWW---
    sed -i "/@import/c\@import 'colors/mocha';" $ewwBarSCSS
    # ---ALACRITTY---
    sed -i '/colors: */c\colors: *mocha' $alacritty
    # ---CONKY---
    sed -i '/.config\/conky/c\~\/.config\/conky\/Mimosa-Dark\/start.sh &' $bspwmrc 
    # ---BACKGROUND---
    echo 'feh --bg-fill ~/.config/bspwm/wallpapers/aether-dark.png' > ~/.fehbg
    # ---BSPWM---
    bspc wm -r
    ;;
  'ZorinLight')
    # ---GTK---
    sed -i '/gtk-theme-name=/c\gtk-theme-name=ZorinLight' $gtkrc
    sed -i '/gtk-icon-theme-name=/c\gtk-icon-theme-name=oomox-aesthetic-light' $gtkrc
    sed -i '/gtk-theme-name=/c\gtk-theme-name=ZorinLight' $gtk
    sed -i '/gtk-icon-theme-name=/c\gtk-icon-theme-name=oomox-aesthetic-light' $gtk
    sed -i '/~\/.config\/bspwm\/polybar\/colors/c\include-file=~\/.config\/bspwm\/polybar\/colors\/latte.ini' $polybar
    sed -i '/~\/.config\/bspwm\/bottom_dock\/colors/c\include-file=~\/.config\/bspwm\/bottom_dock\/colors\/latte.ini' $dock
    # --- ALTERNATE POLYBAR---
    sed -i '/~\/.config\/bspwm\/polybar\/alternate_polybar\/colors/c\include-file=~\/.config\/bspwm\/polybar\/alternate_polybar\/colors\/latte.ini' $alternate_polybar
    sed -i '/~\/.config\/bspwm\/polybar\/alternate_polybar\/bottom_dock\/colors/c\include-file=~\/.config\/bspwm\/polybar\/alternate_polybar\/bottom_dock\/colors\/latte.ini' $alternate_dock
    # ---EWW---
    sed -i "/@import/c\@import 'colors/latte';" $ewwBarSCSS
    # ---ALACRITTY---
    sed -i '/colors: */c\colors: *latte' $alacritty
    # ---CONKY---
    sed -i '/.config\/conky/c\~\/.config\/conky\/Mimosa-Light\/start.sh &' $bspwmrc
    # ---BACKGROUND---
    echo 'feh --bg-fill ~/.config/bspwm/wallpapers/aether-light.png' > ~/.fehbg
    # ---BSPWM---
    bspc wm -r
    ;;
  'DecayCE')
    # ---ALACRITTY---
    sed -i '/colors: */c\colors: *decayce' $alacritty
    # ---GTK---
    sed -i '/gtk-theme-name=/c\gtk-theme-name=Decayce' $gtk
    # ---POLYBAR---
    sed -i '/~\/.config\/bspwm\/polybar\/colors/c\include-file=~\/.config\/bspwm\/polybar\/colors\/decayce.ini' $polybar
    sed -i '/~\/.config\/bspwm\/bottom_dock\/colors/c\include-file=~\/.config\/bspwm\/bottom_dock\/colors\/decayce.ini' $dock
    # ---EWW---
    sed -i "/@import/c\@import 'colors/decayce';" $ewwBarSCSS
    # ---ALTERNATE POLYBAR---
    sed -i '/~\/.config\/bspwm\/polybar\/alternate_polybar\/colors/c\include-file=~\/.config\/bspwm\/polybar\/alternate_polybar\/colors\/decayce.ini' $alternate_polybar
    sed -i '/~\/.config\/bspwm\/polybar\/alternate_polybar\/bottom_dock\/colors/c\include-file=~\/.config\/bspwm\/polybar\/alternate_polybar\/bottom_dock\/colors\/decayce.ini' $alternate_dock
    # ---BACKGROUND---
    echo 'feh --bg-fill ~/.config/bspwm/wallpapers/wave.png' > ~/.fehbg
    # ---BSPWM---
    bspc wm -r
    ;;
  'Dark Decay')
    # ---ALACRITTY---
    sed -i '/colors: */c\colors: *dark-decay' $alacritty
    # ---GTK---
    sed -i '/gtk-theme-name=/c\gtk-theme-name=Dark-decay' $gtk
    # ---POLYBAR---
    sed -i '/~\/.config\/bspwm\/polybar\/colors/c\include-file=~\/.config\/bspwm\/polybar\/colors\/dark-decay.ini' $polybar
    sed -i '/~\/.config\/bspwm\/bottom_dock\/colors/c\include-file=~\/.config\/bspwm\/bottom_dock\/colors\/dark-decay.ini' $dock
    # ---ALTERNATE POLYBAR---
    sed -i '/~\/.config\/bspwm\/polybar\/alternate_polybar\/colors/c\include-file=~\/.config\/bspwm\/polybar\/alternate_polybar\/colors\/dark-decay.ini' $alternate_polybar
    sed -i '/~\/.config\/bspwm\/polybar\/alternate_polybar\/bottom_dock\/colors/c\include-file=~\/.config\/bspwm\/polybar\/alternate_polybar\/bottom_dock\/colors\/dark-decay.ini' $alternate_dock
    # ---EWW---
    sed -i "/@import/c\@import 'colors/darkDecay';" $ewwBarSCSS
    # ---BACKGROUND---
    echo 'feh --bg-fill ~/.config/bspwm/wallpapers/wave.png' > ~/.fehbg
    # ---BSPWM---
    bspc wm -r
    ;;
  'Light Decay')
    # ---ALACRITTY---
    sed -i '/colors: */c\colors: *light-decay' $alacritty
    # ---GTK---
    sed -i '/gtk-theme-name=/c\gtk-theme-name=Light-decay' $gtk
    # ---POLYBAR---
    sed -i '/~\/.config\/bspwm\/polybar\/colors/c\include-file=~\/.config\/bspwm\/polybar\/colors\/light-decay.ini' $polybar
    sed -i '/~\/.config\/bspwm\/bottom_dock\/colors/c\include-file=~\/.config\/bspwm\/bottom_dock\/colors\/light-decay.ini' $dock
    # ---ALTERNATE POLYBAR---
    sed -i '/~\/.config\/bspwm\/polybar\/alternate_polybar\/colors/c\include-file=~\/.config\/bspwm\/polybar\/alternate_polybar\/colors\/light-decay.ini' $alternate_polybar
    sed -i '/~\/.config\/bspwm\/polybar\/alternate_polybar\/bottom_dock\/colors/c\include-file=~\/.config\/bspwm\/polybar\/alternate_polybar\/bottom_dock\/colors\/light-decay.ini' $alternate_dock
    # ---EWW---
    sed -i "/@import/c\@import 'colors/lightDecay';" $ewwBarSCSS
    # ---BACKGROUND---
    echo 'feh --bg-fill ~/.config/bspwm/wallpapers/wave.png' > ~/.fehbg
    # ---BSPWM---
    bspc wm -r
    ;;
  'Decay')
    # ---ALACRITTY---
    sed -i '/colors: */c\colors: *decay' $alacritty
    # ---GTK---
    sed -i '/gtk-theme-name=/c\gtk-theme-name=Decayce' $gtk
    # ---POLYBAR---
    sed -i '/~\/.config\/bspwm\/polybar\/colors/c\include-file=~\/.config\/bspwm\/polybar\/colors\/decay.ini' $polybar
    sed -i '/~\/.config\/bspwm\/bottom_dock\/colors/c\include-file=~\/.config\/bspwm\/bottom_dock\/colors\/decay.ini' $dock
    # ---ALTERNATE POLYBAR---
    sed -i '/~\/.config\/bspwm\/polybar\/alternate_polybar\/colors/c\include-file=~\/.config\/bspwm\/polybar\/alternate_polybar\/colors\/decay.ini' $alternate_polybar
    sed -i '/~\/.config\/bspwm\/polybar\/alternate_polybar\/bottom_dock\/colors/c\include-file=~\/.config\/bspwm\/polybar\/alternate_polybar\/bottom_dock\/colors\/decay.ini' $alternate_dock
    # ---EWW---
    sed -i "/@import/c\@import 'colors/decay';" $ewwBarSCSS
    # ---BACKGROUND---
    echo 'feh --bg-fill ~/.config/bspwm/wallpapers/wave.png' > ~/.fehbg
    # ---BSPWM---
    bspc wm -r
    ;;
  'Zen Mode')
    # ---DISABLE POLYBAR---
    sed -i '/~\/.config\/bspwm\/polybar\/alternate_polybar\/bottom_dock\/launch.sh &/c\# ~\/.config\/bspwm\/alternate_polybar\/bottom_dock\/launch.sh &' $bspwmrc
    sed -i '/~\/.config\/bspwm\/polybar\/launch.sh &/c\# ~\/.config\/bspwm\/polybar\/launch.sh &' $bspwmrc
    sed -i '/~\/.config\/bspwm\/polybar\/alternate_polybar\/launch.sh &/c\# ~\/.config\/bspwm\/polybar\/alternate_polybar\/launch.sh &' $bspwmrc
    sed -i '/~\/.config\/bspwm\/polybar\/alternate_polybar\/non_floating_bar\/launch.sh &/c\# ~\/.config\/bspwm\/polybar\/alternate_polybar\/non_floating_bar\/launch.sh &' $bspwmrc

    # ---REMOVE PADDING---
    sed -i '/bspc config top_padding/c\bspc config top_padding 0' $bspwmrc
    sed -i '/bspc config bottom_padding/c\bspc config bottom_padding 0' $bspwmrc
    sed -i '/bspc config left_padding/c\bspc config left_padding 0' $bspwmrc
    sed -i '/bspc config right_padding/c\bspc config right_padding 0' $bspwmrc

    # ---REMOVE BORDER---
    sed -i '/bspc config border_width/c\bspc config border_width 0' $bspwmrc
    
    # ---POLYBAR---
    killall polybar

    # ---EWW---
    killall eww
    sed -i '/~\/.config\/bspwm\/eww\/launch.sh &/c\# ~\/.config\/bspwm\/eww\/launch.sh &' $bspwmrc

    # ---BACKGROUND---
    echo 'feh --bg-fill ~/.config/bspwm/wallpapers/blossom_upscayled_4x.png' > ~/.fehbg

    # ---BSPWM---
    bspc wm -r
    ;;
  'Partial Zen Mode')
    # ---POLYBAR---
    killall polybar
    
    # ---EWW---
    killall eww
    sed -i '/~\/.config\/bspwm\/eww\/launch.sh &/c\# ~\/.config\/bspwm\/eww\/launch.sh &' $bspwmrc

    # ---DISABLE POLYBAR---
    sed -i '/~\/.config\/bspwm\/polybar\/alternate_polybar\/bottom_dock\/launch.sh &/c\# ~\/.config\/bspwm\/alternate_polybar\/bottom_dock\/launch.sh &' $bspwmrc
    sed -i '/~\/.config\/bspwm\/polybar\/launch.sh &/c\# ~\/.config\/bspwm\/polybar\/launch.sh &' $bspwmrc
    sed -i '/~\/.config\/bspwm\/polybar\/alternate_polybar\/launch.sh &/c\# ~\/.config\/bspwm\/polybar\/alternate_polybar\/launch.sh &' $bspwmrc

    # ---KEEP BOTTOM BAR---
    sed -i '/~\/.config\/bspwm\/polybar\/alternate_polybar\/non_floating_bar\/launch.sh &/c\~\/.config\/bspwm\/polybar\/alternate_polybar\/non_floating_bar\/launch.sh &' $bspwmrc

    # ---REMOVE PADDING---
    sed -i '/bspc config top_padding/c\bspc config top_padding 0' $bspwmrc
    sed -i '/bspc config bottom_padding/c\bspc config bottom_padding 80' $bspwmrc
    sed -i '/bspc config left_padding/c\bspc config left_padding 0' $bspwmrc
    sed -i '/bspc config right_padding/c\bspc config right_padding 0' $bspwmrc

    # ---REMOVE BORDER---
    sed -i '/bspc config border_width/c\bspc config border_width 0' $bspwmrc
    
    # ---BACKGROUND---
    echo 'feh --bg-fill ~/.config/bspwm/wallpapers/blossom_upscayled_4x.png' > ~/.fehbg
    # ---BSPWM---
    bspc wm -r
    ;;
  'Regular Mode')
    # ---POLYBAR---
    killall polybar
    
    # ---EWW---
    killall eww
    sed -i '/~\/.config\/bspwm\/eww\/launch.sh &/c\# ~\/.config\/bspwm\/eww\/launch.sh &' $bspwmrc


    # ---ENABLE POLYBAR---
    sed -i '/~\/.config\/bspwm\/alternate_polybar\/bottom_dock\/launch.sh &/c\~\/.config\/bspwm\/polybar\/alternate_polybar\/bottom_dock\/launch.sh &' $bspwmrc
    sed -i '/~\/.config\/bspwm\/polybar\/launch.sh &/c\~\/.config\/bspwm\/polybar\/launch.sh &' $bspwmrc
    # sed -i '/# ~\/.config\/bspwm\/polybar\/alternate_polybar\/launch.sh &/c\~\/.config\/bspwm\/polybar\/alternate_polybar\/launch.sh &' $bspwmrc
    sed -i '/~\/.config\/bspwm\/polybar\/alternate_polybar\/non_floating_bar\/launch.sh &/c\# ~\/.config\/bspwm\/polybar\/alternate_polybar\/non_floating_bar\/launch.sh &' $bspwmrc

    # ---ADD PADDING---
    sed -i '/bspc config top_padding/c\bspc config top_padding 70' $bspwmrc
    sed -i '/bspc config bottom_padding/c\bspc config bottom_padding 90' $bspwmrc
    sed -i '/bspc config left_padding/c\bspc config left_padding 0' $bspwmrc
    sed -i '/bspc config right_padding/c\bspc config right_padding 0' $bspwmrc

    # ---ADD BORDER---
    sed -i '/bspc config border_width/c\bspc config border_width 5' $bspwmrc

    # ---BACKGROUND---
    echo 'feh --bg-fill ~/.config/bspwm/wallpapers/wave.png' > ~/.fehbg

    # ---BSPWM---
    bspc wm -r
    ;;
  'Vertical Bar Mode')
    # ---POLYBAR---
    killall polybar
    
    # ---EWW---
    killall eww

    # ---DISABLE POLYBAR---
    sed -i '/~\/.config\/bspwm\/polybar\/alternate_polybar\/bottom_dock\/launch.sh &/c\# ~\/.config\/bspwm\/alternate_polybar\/bottom_dock\/launch.sh &' $bspwmrc
    sed -i '/~\/.config\/bspwm\/polybar\/launch.sh &/c\# ~\/.config\/bspwm\/polybar\/launch.sh &' $bspwmrc
    sed -i '/~\/.config\/bspwm\/polybar\/alternate_polybar\/launch.sh &/c\# ~\/.config\/bspwm\/polybar\/alternate_polybar\/launch.sh &' $bspwmrc
    sed -i '/~\/.config\/bspwm\/polybar\/alternate_polybar\/non_floating_bar\/launch.sh &/c\# ~\/.config\/bspwm\/polybar\/alternate_polybar\/non_floating_bar\/launch.sh &' $bspwmrc

    # ---ENABLE EWW---
    sed -i '/~\/.config\/bspwm\/eww\/launch.sh &/c\~/\.config\/bspwm\/eww\/launch.sh &' $bspwmrc

    # ---ADD PADDING---
    sed -i '/bspc config top_padding/c\bspc config top_padding 0' $bspwmrc
    sed -i '/bspc config bottom_padding/c\bspc config bottom_padding 0' $bspwmrc
    sed -i '/bspc config left_padding/c\bspc config left_padding 70' $bspwmrc
    sed -i '/bspc config right_padding/c\bspc config right_padding 0' $bspwmrc

    # ---BACKGROUND---
    echo 'feh --bg-fill ~/.config/bspwm/wallpapers/cat.jpg' > ~/.fehbg

    # ---BSPWM---
    bspc wm -r
    ;;
  'Quit')
    echo "No theme chosen. Leaving current." && exit 1 ;;
esac
