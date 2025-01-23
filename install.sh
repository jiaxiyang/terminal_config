#! /bin/bash
if ! sudo -v; then
  apt install -y zsh
else 
  sudo apt install -y zsh
fi

DIR=$(pwd)
[ -d ~/.oh-my-zsh ] || ln -s $DIR/.oh-my-zsh ~/.oh-my-zsh;
[ -f ~/.zshrc ] || ln -s $DIR/.zshrc ~/.zshrc;
[ -f ~/z.lua ] || ln -s $DIR/z.lua ~/z.lua;
[ -f ~/.tmux.conf ] || ln -s $DIR/.tmux.conf ~/.tmux.conf;

cp -r bin $HOME/.bin
# echo "export PATH=$DIR/bin:$PATH" >> ~/.zshrc
