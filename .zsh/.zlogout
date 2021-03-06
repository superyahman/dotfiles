#******************************************************************************
#
#  .zlogout
#
#  (in $ZDOTDIR : default $HOME)
#
#  Finalize setup file for only interactive zsh when you log out.
#  Not read in for subsequent shells.
#
#******************************************************************************

# Save session.
if [[ -n $TMUX ]]; then
    cat <<- EOF >| ~/.zsh_session
	echo 'Restore zsh session...'
	cd $PWD
	EOF
fi

# Logout message.
#   If <<- is used instead of <<,
#   then all leading tabs are stripped from word and from the document.
cat <<- 'EOF'

Don't forget.
Always, somewhere,
someone is fighting for you.
-- As long as you remember her,
you are not alone.
EOF

echo "$(hostname): $(whoami) logged out at $(date)"

