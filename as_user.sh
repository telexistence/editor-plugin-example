#!/bin/bash

mkdir -p $HOME/.config/tmux
ln -s $PWD/tmux.conf $HOME/.config/tmux/tmux.conf
ln -s $PWD/gitconfig $HOME/.gitconfig

if [ ! -d "$HOME/.fzf" ]; then
    git clone --depth 1 https://github.com/junegunn/fzf.git $HOME/.fzf
    yes | $HOME/.fzf/install
fi
