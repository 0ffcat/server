# Modified Version of the Standard Ubuntu ~/.profile File

	# If Bash Is Running, Include ~/.bashrc
		[ -n "$BASH_VERSION" ] && [ -f "$HOME/.bashrc" ] && . "$HOME/.bashrc"

	# Set Bin Path (the one I use, anyway)
		[ -d "$HOME/.local/bin" ] && PATH="$HOME/.local/bin:$PATH"
