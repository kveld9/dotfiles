#!/bin/bash

# Lista de paquetes a verificar y desinstalar si están instalados
packages=(
adwaita-cursors
adwaita-icon-theme
adwaita-icon-theme-legacy
bluedevil
bluez
bluez-libs
bluez-qt
bolt
capitaine-cursors
discover
kaccounts-integration
kate 
kdenlive
kgamma
kinfocenter
kio-extras
krita
ksshaskpass
ksystemstats
kwallet-pam
libldac
milou
noto-fonts-emoji
oxygen
oxygen-sounds
plasma-browser-integration
plasma-discover
plasma-systemmonitor
plasma-thunderbolt
plasma-vault
plasma-welcome
plasma-workspace-wallpapers
print-manager
sbc
sbx
signon-kwallet-extension
sound-theme-freedesktop
iw
iwd
vim
vi
)

# Recorre la lista de paquetes
for pkg in "${packages[@]}"; do
    if paru -Qq "$pkg" &>/dev/null; then
        echo "Desinstalando $pkg..."
        paru -Rdd --noconfirm "$pkg"
    else
        echo "$pkg no está instalado, omitiendo..."
    fi
done

# Elimina paquetes huérfanos
echo "Eliminando dependencias huérfanas..."
paru -Rs $(paru -Qtdq) --noconfirm
