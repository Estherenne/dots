# dots
the ~115000th dotfiles repository on github

this is very inspired by omarchy but i also dont like hyprland so i made this
## software i use
- wm: sway
- launcher, clipboard manager: vicinae
- launcher 2 (this one is used for the menu scripts): wofi
- terminal: ghostty
- text editor: nvim
- bar: waybar
- shell: fish
## installation
i think you can figure it out for the most part, but a somewhat unclear part of applying this config:

a lot of the config files in this are themed by matugen so if you don't want the colors to look weird you'll have to set up `swww` first, then run:
```
matugen image path/to/wallpaper.png
```
then reload waybar, sway, whatever else is using matugen theming
## todo
- [] clean up ghostty and sway config
- [] switch to rofi in favor of wofi
- [] vicinae matugen theme
- [] ghostty matugen theme (i think matugen should be able to generate a full color palette)
  - [] make nvim use ghostty's colors so it is also themed
- [] finish the menu scripts
