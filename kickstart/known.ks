# K.N.O.W.N. Goose 0.1 "Hatchling"
# Fedora KDE Desktop Build

lang en_US.UTF-8
keyboard us
timezone America/Los_Angeles --utc

# Installation
install
cdrom

# Bootloader
bootloader --location=mbr

# Disk
clearpart --all --initlabel
autopart --type=btrfs

# Network
network --bootproto=dhcp --device=link --activate

# User
rootpw --lock
user --name=known --groups=wheel --password=known

# Desktop
graphical

# KDE Plasma
%packages
@kde-desktop-environment
firefox
kate
dolphin
konsole
discover
flatpak

%end

# Branding setup
%post

echo "Welcome to K.N.O.W.N. Goose" > /etc/motd

%end

