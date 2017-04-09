export PATH=/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# CASE_SENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# export PATH="/Users/plumcakes/.rbenv/shims:/Users/plumcakes/.rbenv/bin:$PATH"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

alias tmn='tmux new -s'
alias tma='tmux attach -t'
alias tml='tmux ls'
alias tmk='tmux kill-session -t'
alias k='kill -9'

BASE16_SHELL="$HOME/.config/base16-shell/base16-eighties.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# alias tmux="TERM=screen-256color-bce tmux"

export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.composer/vendor/bin:$PATH"
eval "$(rbenv init -)"

# NVM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
# export PATH=/Users/plumcakes/.themekit:$PATH
export PATH=~/.themekit:/Users/plumcakes/.nvm/versions/node/v6.4.0/bin:/Users/plumcakes/.rbenv/shims:/Users/plumcakes/.composer/vendor/bin:/Users/plumcakes/.rbenv/bin:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH="/usr/local/sbin:$PATH"
