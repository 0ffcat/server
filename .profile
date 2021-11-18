# Modified from the standard DigitalOcean .profile file

# Load Bashrc File
	if [ -n "$BASH_VERSION" ]; then
		[ -f "$HOME/.bashrc" ] && . "$HOME/.bashrc"
	fi

# Set Bin Path
	[ -d "$HOME/.local/bin" ] && PATH="$HOME/.local/bin:$PATH"
