
# Interactive Running
  [[ $- != *i* ]] && return

# Aliases 
	alias dotfiles='/usr/bin/git --git-dir=/home/cat/.dotfiles/ --work-tree=/home/cat' # for dotfiles
	alias cls="clear"
	alias grep="grep --color=auto"
	alias ls="ls --color=always"
	alias ll='ls -alF'
	alias la='ls -A'
	alias l='ls -CF'

# PS1
	export PS1="\n\\$ \T \[$(tput sgr0)\]\[\033[38;5;7m\]($(git branch 2>/dev/null | grep '^*' | colrm 1 2))\[$(tput sgr0)\] \w\n \[$(tput sgr0)\]\[\033[38;5;14m\]\u\[$(tput sgr0)\] @ \[$(tput sgr0)\]\[\033[38;5;4m\]\h\[$(tput sgr0)\] > \[$(tput sgr0)\]"

# LS Colour Output
	export LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33'

## Cleaning up the home directory: 
	export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
	# Bash History
		export HISTFILE="$XDG_DATA_HOME"/bash/history
	# GnuPG
		export GNUPGHOME="$XDG_DATA_HOME"/gnupg
	# Node
		export NPM_PACKAGES="$XDG_CONFIG_HOME/npm-packages"
		export NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
		export PATH="$NPM_PACKAGES/bin:$PATH"
		export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history

# Go
	export GOPATH=/home/cat/golib
	export PATH=$PATH:$GOPATH/bin
	export GOPATH=$GOPATH:/home/cat/gocode

