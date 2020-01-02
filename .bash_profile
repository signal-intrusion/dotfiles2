# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

export PATH="$HOME/.rbenv/bin:$PATH"
export PATH=$PATH:$HOME/dev_utils/dev_db
export PATH="/usr/local/sbin:$PATH"

eval "$(rbenv init -)"
