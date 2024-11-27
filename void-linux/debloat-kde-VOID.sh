#!/bin/bash

# Lista de paquetes a verificar y desinstalar si están instalados
packages=(
adwaita-icon-theme
bluedevil
bluez
bolt
btrfs-progs
cryptsetup
dolphin-plugins
grub-i386-efi
ipw2100-firmware
ipw2200-firmware
iw
iwd
kaccounts-integration
kaccounts-providers
kate
kdenlive
kdeplasma-addons
kgamma
kinfocenter
kio-extras
krita
ksshaskpass
ksystemstats
kwallet-pam
kwrite
libldac
linux-firmware-broadcom
linux-firmware-intel
linux-firmware-nvidia
lvm2
milou
oxygen
oxygen-icons
oxygen-icons5
oxygen-qt5
oxygen-qt6
oxygen-sounds
plasma-browser-integration
plasma-discover
plasma-systemmonitor
plasma-thunderbolt
plasma-vault
plasma-welcome
plasma-workspace-wallpapers
print-manager
sbx
signon-kwallet-extension
sound-theme-freedesktop
vi
vim
void-artwork
xf86-input-synaptics
xf86-input-vmmouse
xf86-input-wacom
xf86-video-ati
xf86-video-dummy
xf86-video-fbdev
xf86-video-nouveau
xf86-video-vesa
zd1211-firmware
void-repo-multilib
void-repo-multilib-nonfree
void-docs-browse
void-docs
)

# Recorre la lista de paquetes
for pkg in "${packages[@]}"; do
    if xbps-query -R "$pkg" &>/dev/null; then
        echo "Desinstalando $pkg..."
        sudo xbps-remove -RoF "$pkg"
    else
        echo "$pkg no está instalado, omitiendo..."
    fi
done
