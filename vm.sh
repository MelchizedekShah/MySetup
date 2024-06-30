#!/bin/bash

clear

echo "
__     ___      _               _   __  __                                   
\ \   / (_)_ __| |_ _   _  __ _| | |  \/  | __ _ _ __   __ _  __ _  ___ _ __ 
 \ \ / /| |  __| __| | | |/ _  | | | |\/| |/ _  |  _ \ / _  |/ _  |/ _ \  __|
  \ V / | | |  | |_| |_| | (_| | | | |  | | (_| | | | | (_| | (_| |  __/ |   
   \_/  |_|_|   \__|\__,_|\__,_|_| |_|  |_|\__,_|_| |_|\__,_|\__, |\___|_|   
                                                             |___/           
"
echo "Do you want to start the setup? (y/n)"
read response 

if [[ $response == "Y" || $response = "y" ]]; then
    echo "Starting KVM/Qemu/virt-manager installation...."
else 
    echo "Exiting..."
fi

##required packages##

packages="virt-manager virt-viewer qemu vde2 ebtables iptables-nft nftables dnsmasq bridge-utils ovmf swtpm"

sudo pacman -S $packages --needed

##editer choice

echo "What is your text editor?"
read responsetexteditor

editor=$responsetexteditor


##libvirtd.conf

echo "Manual steps required:"
echo 'Remove # at the following lines: unix_sock_group = "libvirt" and unix_sock_rw_perms = "0770"'
echo "Start editing? (y)"
read response
if [[ $response == "Y" || $response == "y" ]]; then
    sudo $editor /etc/libvirt/libvirtd.conf
fi
##add user

sudo usermod -a -G kvm,libvirt $(whoami)

##enable services

sudo systemctl enable libvirtd
sudo systemctl start libvirtd

##qemu.conf

echo "Manual steps required:"
echo "Uncomment and add your user name to user and group."
echo 'user = "your username"'
echo 'group = "your username"'
echo "open qemu.conf? (y)"
read response
if [[ $response == "y" || $response == "Y" ]]; then
    sudo $editor /etc/libvirt/qemu.conf
fi


##Restart Services

sudo systemctl restart libvirtd

##Autostart Network

sudo virsh net-autostart default

##reboot

echo "Setup is done, please reboot your system."
