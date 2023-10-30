#!/bin/bash

# Cloning Packer plugin manager
if [ ! -d "$HOME/.local/share/nvim/site/pack/packer/start/packer.nvim" ] 
then
    echo "[CONFIG] Packer folder not found... Cloning it..."
    git clone --depth 1 https://github.com/wbthomason/packer.nvim $HOME/.local/share/nvim/site/pack/packer/start/packer.nvim
    echo "[CONFIG] Packer installed!"
fi


# Linking config from git repo
ln -s $HOME/config/nvim $HOME/.config/nvim

