export TERM="xterm-256color"
export ZSH="/Users/jesseschroder/.oh-my-zsh"
ZSH_THEME="powerlevel9k/powerlevel9k"

COMPLETION_WAITING_DOTS="true"

plugins=(git rails ruby osx zsh-completions)
autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh
source "/opt/dev/dev.sh"
if [[ -f ~/.zshrc_aliases ]]; then source ~/.zshrc_aliases; fi

POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(root_indicator ssh command_execution_time time)
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=3

export PATH=/usr/local/share/npm/bin:$PATH
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/bin/rails:$PATH"

if [[ "$(uname -s)" == "Darwin" ]]; then cur_machine=Mac;
elif [[ "$(uname -s)" == "Linux" ]]; then cur_machine=Linux;
else cur_machine="UNKNOWN SYSTEM: $(uname -s)"
fi


