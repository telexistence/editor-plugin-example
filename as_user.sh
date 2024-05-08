#!/bin/bash
set -e  # Exit on error

# Example 1: put tmux & git config
mkdir -p $HOME/.config/tmux
ln -sfn $PWD/tmux.conf $HOME/.config/tmux/tmux.conf
ln -sfn $PWD/gitconfig $HOME/.gitconfig

# Example 2: install ctrl-R fuzzy finder
if [ ! -d "$HOME/.fzf" ]; then
    git clone --depth 1 https://github.com/junegunn/fzf.git $HOME/.fzf
fi
yes | $HOME/.fzf/install

# Example 3: Show whale in prompt when you are inside of docker
echo 'PS1='"'"'🐳  \[\033[1;36m\]\u@\h \[\033[1;34m\]\W\[\033[0;35m\] \[\033[1;36m\]$ \[\033[0m\]'"'" >> ~/.bashrc
