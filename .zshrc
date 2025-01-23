export PATH=$HOME/.bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

[ -f $HOME/z.lua ] && eval "$(lua $HOME/z.lua --init zsh)" && alias zh='z -I -t .'
ZSH_THEME="robbyrussell"
ZSH_DISABLE_COMPFIX=true 

source $ZSH/oh-my-zsh.sh

source $ZSH/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/custom/plugins/zsh-autosuggestion/zsh-autosuggestions.zsh

ZSH_HIGHLIGHT_STYLES[arg0]='fg=#26ff00,bold'
ZSH_HIGHLIGHT_STYLES[command]='fg=#26ff00,bold'
export FZF_DEFAULT_OPTS="--color=hl:green,hl+:#00ff00"
source <(fzf --style full --zsh)

export LESS=XR
export TERM="screen-256color"

# PROMPT='%B%F{green}%n@%u%f:%F{blue}%~%f%B%f $ ' 
