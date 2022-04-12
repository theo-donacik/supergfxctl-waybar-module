# supergfxctl-waybar-module

This is an [asusctl-gex](https://gitlab.com/asus-linux/asusctl-gex)-like app for waybar.

## Description

A module that allows for graphics swithcing on ASUS laptops running linux quickly for [waybar](https://github.com/Alexays/Waybar).
### Features

- Shows current graphics card status (supergfxctl -g) in the bar
- On hover, shows GPU power mode (supergfxctl -S)
- On click, spawns a wofi-based menu that lets you choose between graphics modes

## Getting started

### Prerequisites

- [Wofi](https://hg.sr.ht/~scoopta/wofi)
- [Waybar](https://github.com/Alexays/Waybar)

### Configure

Place the "custom/gfx" code block from config into your waybar config, then place "custom/gfx" in one of the modules lists at the top
where you want the module to appear.

Place the files in modules folder at $HOME/.config/waybar/modules, create the directory if it does not exist yet

To make the wofi menu spawn where you want, you will have to modify the width variable at the top of modules/gfxmenu.sh (for my system, -550 makes it appear direclty under the module). You will likely have to fiddle with this value to get it where you want. 0 = top right corner.

Must select an option or hit Esc to close the pop-up

### To-do

- [ ] Base width off mouse position so menu will always spawn under the module.
- [ ] Kill wofi menu when you click off (if this is possible with wofi)

