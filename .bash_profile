# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";
export PATH="$HOME/.composer/vendor/bin:$PATH";

source ~/.profile

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

export PATH="$HOME/.rbenv/bin:$PATH"
export PATH=$PATH:$HOME/dev_utils/dev_db
export PATH="/usr/local/sbin:$PATH"

eval "$(rbenv init -)"
