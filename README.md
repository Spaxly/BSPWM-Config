<h1 align="center">The Ultimate BSPWM Config</h1>

<h3 align="center">If you decide to use my config, please do give me credit in the README of your fork/repo.</center>

# Images & Features
<details>
  <summary>View</summary>
  </br>
    <h1>Vertical Bar Mode:</h1>
    <image src="https://raw.githubusercontent.com/Spaxly/BSPWM-Config/main/assets/DesktopWithEWWBar.png"></image>
    <h1>Separated Bar:</h1>
    <image src="https://raw.githubusercontent.com/Spaxly/BSPWM-Config/main/assets/AlternateDesktop.png"></image>
    <h1>Horizontal Top Bar & Bottom Dock:</h1>
    <image src="https://raw.githubusercontent.com/Spaxly/BSPWM-Config/main/assets/Desktop.png"></image>
    <h1>Horizontal Bottom Bar:</h1>
    <image src="https://raw.githubusercontent.com/Spaxly/BSPWM-Config/main/assets/BottomBar.png"></image>
    <h1>Change From Global Themes & Modes:</h1>
    <image src="https://raw.githubusercontent.com/Spaxly/BSPWM-Config/main/assets/UpdatedThemeSwitcher.png"></image>
</details>

# Dependencies
```sudo pacman -Syu $(cat pkglist)```


# Install
```cd BSPWM-Config && cp -rf themes/ ~/.themes/ && cp -rf icons/ ~/.icons/ && cp -rf config/ ~/.config/ && mv ~/.config/nvim ~/.config/ && sudo systemctl enable --now sddm```

Now extract the icons 

```cd ~/.icons/ && tar -xf oomox-aesthetic-dark.tar.xz && tar -xf oomox-aesthetic-light.tar.xz```

In order to use the SDDM theme, you will have to edit the SDDM config file as shown below.
```
### FOR ARCH LINUX
sudo nvim /usr/lib/sddm/sddm.conf.d/default.conf
###
```
Set 
```
[THEME]
Current=
```

to 
```
[THEME]
Current=multicolor-sddm-theme
```
To use bunnyfetch, you have to run the following commands to install.
```
mkdir ~/.local/bin/ # create local binary folder
git clone https://github.com/Rosettea/Bunnyfetch # clone repo
cd Bunnyfetch # go into the directory
go get -d ./... # build bunnyfetch 
go build -ldflags "-w -s" # ldflags make the binary smaller
mv bunnyfetch ~/.local/bin/ # move bunnyfetch to the created directory

### The following step is not required if you're using my fish config.

### If you're using fish as your shell, run:
fish_add_path ~/.local/bin/
```

It is recommended to reboot after executing the commands above.

# Features
* Global theme switcher that changes the theme of the bar, dock, terminal, gtk, etc

* Custom dock configured in polybar

* Wallpaper changer script in rofi

# Credits
AlphaTechnolog - For EWW bar configuration, taken from https://github.com/AlphaTechnolog/eww-dotfiles and edited to my liking.

ilham25 - For Aether Dark & Light wallpapers, taken from https://github.com/ilham25/dotfiles-openbox, they were later upscaled 4x using Upscayl.
