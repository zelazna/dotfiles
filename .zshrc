# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH=/Users/constantinguidon/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="zeit"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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
plugins=(git sudo composer npm osx)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vim ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


export NVM_DIR="/Users/constantinguidon/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


export PATH=$PATH:/Applications/MAMP/bin/php/php7.0.0/bin:/Users/constantinguidon/.rvm/gems/ruby-2.3.0/bin:/Users/constantinguidon/.rvm/gems/ruby-2.3.0@global/bin:/Users/constantinguidon/.rvm/rubies/ruby-2.3.0/bin:/Users/constantinguidon/.nvm/versions/node/v6.9.1/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/share/dotnet:/Library/Frameworks/Mono.framework/Versions/Current/Commands:/Users/constantinguidon/.composer/vendor/bin:/Users/constantinguidon/.rvm/bin


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting


eval export PATH="/Users/constantinguidon/.pyenv/shims:${PATH}"
export PYENV_SHELL=zsh
source '/usr/local/Cellar/pyenv/1.0.3/libexec/../completions/pyenv.zsh'

command pyenv rehash 2>/dev/null
pyenv() {
  local command
  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  activate|deactivate|rehash|shell)
    eval "$(pyenv "sh-$command" "$@")";;
  *)
    command pyenv "$command" "$@";;
  esac
}

function homestead() {
    ( cd ~/Homestead && vagrant $* )
    }

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# added by travis gem
[ -f /Users/constantinguidon/.travis/travis.sh ] && source /Users/constantinguidon/.travis/travis.sh

# fix python command line errors
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# php
alias docthis="phpdoc run -d . -t doc/"
#alias php="/Applications/MAMP/bin/php/php7.0.0/bin/php"

# Mysql
#export PATH="/Applications/MAMP/Library/bin:$PATH"

#composer
alias composer="/usr/local/bin/composer"

# Symfony
alias sf='php bin/console'
alias sf2='php app/console'

# Global Variables
##################

# set vim as default editor
export EDITOR=vim

#################

# hub ( command line wrapper for github )
eval "$(hub alias -s)"
