
# Interactive Running
  [[ $- != *i* ]] && return

# Aliases 
	alias dotfiles='/usr/bin/git --git-dir=/home/cat/.dotfiles/ --work-tree=/home/cat' # for dotfiles
	alias cls="clear"
	alias ll='ls -alF'
	alias la='ls -A'
	alias l='ls -CF'

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

