## Exports

export TERM="xterm-256color"
export ZSH="/Users/jesseschroder/.oh-my-zsh"
export PATH=/usr/local/share/npm/bin:$PATH
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/share/chruby:$PATH"
export PATH="/usr/bin/rails:$PATH"

# Sets theme to load with proper settings in .zshrc_theme_stuff.
# export ZSH_CURR_THEME="pl9k"
export ZSH_CURR_THEME="pure"



ZSH_TMUX_AUTOSTART="true"
COMPLETION_WAITING_DOTS="true"
plugins=(
	git
	rails
	ruby
	osx
	zsh-completions
	bundler
	brew
	common-aliases
	docker
	gem
	jsontools
	kubectl
	lol
	tmux
	vscode
	web-search
)


autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh
source "/opt/dev/dev.sh"

# Loads other source files. This must happen after oh-my-zsh for pure prompt
if [[ -f ~/.zshrc_aliases ]]; then source ~/.zshrc_aliases; fi
if [[ -f ~/.zshrc_theme_stuff ]]; then source ~/.zshrc_theme_stuff; fi

# Detect kernel 
if [[ "$(uname -s)" == "Darwin" ]]; then cur_machine=Mac;
elif [[ "$(uname -s)" == "Linux" ]]; then cur_machine=Linux;
else cur_machine="UNKNOWN SYSTEM: $(uname -s)"
fi


# cloudplatform: add Shopify clusters to your local kubernetes config
export KUBECONFIG=${KUBECONFIG:+$KUBECONFIG:}/Users/jesseschroder/.kube/config:/Users/jesseschroder/.kube/config.shopify.cloudplatform
