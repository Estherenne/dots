# dots
the ~225000th dotfiles repository on github

this is very inspired by omarchy but i also dont like hyprland so i made this

## software i use
- wm: niri
- launcher, clipboard manager: vicinae
- launcher 2 (this one is used for the menu scripts): rofi
- terminal: kitty
- text editor: nvim
- bar: waybar
- shell: zsh

## installation
ensure chezmoi is installed

1. run `chezmoi init`
2. clone the repository into `~/.local/share/chezmoi/`
3. run `chezmoi apply`, overwriting any files if needed

a lot of the config files in this are themed by matugen so if you don't want the colors to look weird you'll have to set up `swww` first, then run:
```
matugen image path/to/wallpaper.png
```

## todo
- [x] switch to rofi
- [x] vicinae matugen theme
- [ ] finish the menu scripts
