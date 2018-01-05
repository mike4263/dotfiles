#!/bin/bash

# check pre-reqs
if [[ ! -e ~/.vim/bundle/Vundle.vim ]]; then
  echo "Installing Vundle"    
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

if [[ ! -e ~/.oh-my-zsh ]]; then
  echo "Installing oh-my-zsh.."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  rm -rf ~/.oh-my-zsh/custom
  ln -s ~/dotfiles/zsh ~/.oh-my-zsh/custom
fi

if [[ ! -e ~/.zshrc ]]; then
  echo "Installing linking zshrc.."
  ln -s ~/dotfiles/zshrc ~/.zshrc
fi

if [[ ! -e ~/.tmux.conf ]]; then
  echo "Installing linking tmux"
  ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
fi

if [[ ! -e ~/.vimrc ]]; then
  echo "Linking vim config.."
	ln -s ~/dotfiles/vimrc ~/.vimrc
fi

if [[ ! -e ~/.vimbkup ]]; then
  echo "Creating backup directory.."
	mkdir ~/.vimbkup
fi


mkdir -p ~/.git/hooks
ln -f -s ~/dotfiles/git/config ~/.git/config
ln -f -s ~/dotfiles/git/pre-commit.git.sh ~/.git/hooks/pre-commit


echo "Manual Steps: "
echo "- launch vim and :PluginInstall"

# vim backup


# vim: ts=2 sw=2 expandtab #
