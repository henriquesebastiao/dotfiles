# Executar como sudo

# Instalando yay
sudo pacman -S --needed git base-devel --noconfirm
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
yay -Y --gendb --noconfirm

# Instalando apps
sudo yay -S $(cat yay-qe.txt | cut -d' ' -f1)

# Instalando flatpaks
flatpak install flathub com.microsoft.Edge
flatpak install flathub io.dbeaver.DBeaverCommunity

# Adicionando configuracoes de monitores no xorg
cat etc/X11/xorg.conf.d/10-monitors.conf > /etc/X11/xorg.conf.d/10-monitors.conf

# Desinstalando apps indesejados
yay -R gnome-connections \
gnome-console \
gnome-contacts \
gnome-maps \
gnome-music \
gnome-software \
gnome-tour --noconfirm
