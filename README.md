# supergfxctl-waybar-module

This is an [supergfxctl-gex](https://gitlab.com/asus-linux/supergfxctl-gex)-like module for waybar.

## Description

A [waybar](https://github.com/Alexays/Waybar) module that uses [supergfxctl](https://gitlab.com/asus-linux/supergfxctl) for graphics swithcing on ASUS laptops with linux and s dedicated graphics card.

### Features

- Shows current graphics card status (supergfxctl -g) in the bar
- On hover, shows GPU power mode (supergfxctl -S)
- On click, spawns a menu that lets you choose between graphics modes

## Getting started

### Prerequisites

- [Waybar](https://github.com/Alexays/Waybar)
- [supergfxctl](https://gitlab.com/asus-linux/supergfxctl)

### Configure

Copy the module in the modules folder and .xml file into your waybar config folder, then place the "custom/supergfx" code block from the included config file into your own waybar config, replacing the default file paths, then put "custom/gfx" in one of the modules lists at the top of your waybar config.
