#!/bin/bash

# check pre-reqs
if [[ ! -e ~/.vim/bundle/Vundle.vim ]]; then
  echo "Installing Vundle"
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

if [[ ! -e ~/.oh-my-zsh ]]; then 
  echo "Installing oh-my-zsh.."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

if [[ ! -e ~/.zshrc ]]; then
  echo "Installing linking zshrc.."
  ln -s ~/dotfiles/zshrc ~/.zshrc
fi


if [[ ! -e ~/.vimrc ]]; then
  echo "Linking vim config.."
	ln -s ~/dotfiles/vimrc ~/.vimrc
fi

if [[ ! -e ~/.vimbkup ]]; then
  echo "Creating backup directory.."
	mkdir ~/.vimbkup
fi


echo "Manual Steps: "
echo "- launch vim and :PluginInstall"

# vim backup


# vim: ts=2 sw=2 expandtab #
