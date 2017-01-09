# Path to your oh-my-zsh installation.
  export ZSH=/home/devbox/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"
ZSH_THEME="powerlevel9k/powerlevel9k"
#ZSH_THEME="agnoster"
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# include Z, yo
. ~/z.sh
# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
export DISABLE_AUTO_TITLE="true"

export TERM='xterm-256color'
# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

  export PATH="/home/devbox/perl5/bin:/home/devbox/.rbenv/plugins/ruby-build/bin:/home/devbox/.rbenv/shims:/home/devbox/.rbenv/bin:/home/devbox/perl5/bin:/home/devbox/.rbenv/plugins/ruby-build/bin:/home/devbox/.rbenv/shims:/home/devbox/.rbenv/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'

export EDITOR='nvim'

export PATH=$PATH:/usr/local/go/bin

export GOPATH=$HOME/Code/go
export PATH=$PATH:$GOPATH/bin

#  source ~/.bin/tmuxinator.zsh
# source ~/.rbenv/shims/tmuxinator.zsh
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias nvit="nvim -c NERDTree"
alias lf="ls -l | egrep -v '^d'"
alias ldir="ls -l | egrep '^d'"
alias rmi="rm -i"
alias rd="echo 'Use rmi -r please'"
alias bex="bundle exec"
alias gitlg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias docker-crun='docker-compose run --user "$(id -u):$(id -g)"'
alias docker-crur='docker-compose run --rm --user "$(id -u):$(id -g)"'
alias docker-crex='docker-compose exec --user "$(id -u):$(id -g)"'
alias docker-crer='docker-compose exec --rm --user "$(id -u):$(id -g)"'
alias localdocker-cbuild="LOCAL_USER_ID=$(id -u) docker-compose build"
alias dockeruser='--user "$(id -u):$(id -g)"'
alias suspendme="systemctl suspend"
DISABLE_AUTO_TITLE=true

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
