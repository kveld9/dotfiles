#!/bin/bash

# Lista de paquetes a verificar y desinstalar si están instalados
packages=(
accounts-integration
bluedevil
btrfs-progs
cryptsetup
grub-i386-efi
ipw2100-firmware
ipw2200-firmware
kaccounts-providers
ksystemstats
kwrite
linux-firmware-broadcom
linux-firmware-intel
linux-firmware-nvidia
lvm2
oxygen
plasma-thunderbolt
plasma-workspace-wallpapers
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
)

# Recorre la lista de paquetes
for pkg in "${packages[@]}"; do
    if xbps-query -l "$pkg" &>/dev/null; then
        echo "Desinstalando $pkg..."
        xbps-remove -RoF"$pkg"
    else
        echo "$pkg no está instalado, omitiendo..."
    fi
done
