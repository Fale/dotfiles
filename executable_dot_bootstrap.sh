#!/bin/sh

# neoVim plugins
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
nvim +PlugInstall +qall > /dev/null

git clone git@github.com:Fale/password-store.git .password-store

flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install --user --assumeyes com.github.xournalpp.xournalpp
flatpak install --user --assumeyes im.fluffychat.Fluffychat
flatpak install --user --assumeyes org.gimp.GIMP
flatpak install --user --assumeyes org.openstreetmap.josm
flatpak install --user --assumeyes org.chromium.Chromium
