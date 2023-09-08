# Brew
[[ -x /opt/homebrew/bin/brew ]] && eval $(/opt/homebrew/bin/brew shellenv)

# Syntax highlighting
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
COMPLETION_WAITING_DOTS="true"
plugins=(git ruby rails gem bundler brew vscode)

source $ZSH/oh-my-zsh.sh

# Theme
source $HOME/.zshrc_theme
