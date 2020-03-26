#!/bin/bash

[[ -L $HOME/.gitignore ]] && rm $HOME/.gitignore
[[ -f $HOME/.gitignore ]] && mv $HOME/.gitignore $HOME/gitignore.bak
ln -s $HOME/dotfiles/gitconfig $HOME/.gitconfig

[[ -L $HOME/.bashrc ]] && rm $HOME/.bashrc
[[ -f $HOME/.bashrc ]] && mv $HOME/.bashrc $HOME/bashrc.bak
ln -s $HOME/dotfiles/bashrc $HOME/.bashrc

[[ -L $HOME/.tmux.conf ]] && rm $HOME/.tmux.conf
[[ -f $HOME/.tmux.conf ]] && mv $HOME/.tmux.conf $HOME/tmux.conf.bak
ln -s $HOME/dotfiles/tmux.conf $HOME/.tmux.conf


