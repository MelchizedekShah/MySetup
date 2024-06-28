MySetup for arch linux

Welcome to the MySetup repository! This project contains various configuration files and scripts to set up and customize your development environment. Below you'll find instructions on how to get started, as well as a detailed guide on each component included in this repository.
Introduction

This repository is designed to help you quickly set up a personalized and efficient development environment. It includes configurations for various tools and applications such as Hypr, Kitty, Mako, Swaylock, Waybar, Wofi, and more. These tools are chosen for their flexibility, performance, and ease of use, making them ideal for both development and everyday use.
Getting Started. Keep in mind this project is only tested on arch linux.

To get started with setting up your environment using this repository, follow these steps:

    Clone the Repository:

    bash
    git clone https://github.com/yourusername/MySetup.git
    cd MySetup
    chmod +x MySetupScript-1.sh
    chmod +x MySetupScript-2.sh
    ./MySetupScript-1
    ./MySetupScript-2

Components
Hypr is a highly customizable window manager. You can find its configuration files in the hypr directory.

Kitty is a fast, feature-rich terminal emulator. Configuration files are located in the kitty directory.
Note: The configuration for Kitty was adapted from another repository, but has been modified to suit this setup.

Mako
Mako is a lightweight notification daemon. Configuration files are in the mako directory.
Note: The configuration for Mako was adapted from another repository, but has been modified to suit this setup.

Swaylock
Swaylock is a screen locker for Wayland. Configuration files can be found in the swaylock directory.
Note: The configuration for Swaylock was adapted from another repository, but has been modified to suit this setup.

Wallpapers
Store your favorite wallpapers in the wallpapers directory.

Waybar
Waybar is a highly customizable status bar for Wayland. Configuration files are in the waybar directory.
Note: The configuration for Waybar was initially copied from another repository, but significant changes have been made to fit this setup.

Wlogout
Wlogout is a logout menu for Wayland. Configuration files are in the wlogout directory.
Note: The configuration for Wlogout was adapted from another repository, but has been modified to suit this setup.

Wofi
Wofi is a launcher/menu program for Wayland. Configuration files are in the wofi directory.
Note: The configuration for Wofi was adapted from another repository, but has been modified to suit this setup.

Setup Scripts
MySetupScript-1

Configuration Files

Grub
Customize your GRUB bootloader with the configuration file found in the grub directory.

Issue
Modify the issue message displayed before login with the file in the issue directory.

Pacman
Adjust your Pacman settings using the pacman.conf file in the pacman.conf directory.

Starship
Customize your shell prompt with the starship.toml file in the starship.toml directory.


