export ZSH=/Users/constantinguidon/.oh-my-zsh

ZSH_THEME="zeit"
COMPLETION_WAITING_DOTS="true"
plugins=(git sudo composer npm osx)

source $ZSH/oh-my-zsh.sh

# Global Variables
##################

# set vim as default editor
export EDITOR=vim

# RUBY
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
# added by travis gem
[ -f /Users/constantinguidon/.travis/travis.sh ] && source /Users/constantinguidon/.travis/travis.sh

# NODE
export NVM_DIR="/Users/constantinguidon/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# GO
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

#PYTHON
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

# fix python command line errors
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# MYSQL
#export PATH="/Applications/MAMP/Library/bin:$PATH"

# SSH
export SSH_KEY_PATH="~/.ssh/dsa_id"

export PATH=$PATH:/Applications/MAMP/bin/php/php7.0.0/bin:/Users/constantinguidon/.rvm/gems/ruby-2.3.0/bin:/Users/constantinguidon/.rvm/gems/ruby-2.3.0@global/bin:/Users/constantinguidon/.rvm/rubies/ruby-2.3.0/bin:/Users/constantinguidon/.nvm/versions/node/v6.9.1/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/share/dotnet:/Library/Frameworks/Mono.framework/Versions/Current/Commands:/Users/constantinguidon/.composer/vendor/bin:/Users/constantinguidon/.rvm/bin

#################

# ALIASES
################

# PHP
alias docthis="phpdoc run -d . -t doc/"
#alias php="/Applications/MAMP/bin/php/php7.0.0/bin/php"

#composer
alias composer="/usr/local/bin/composer"

# Symfony
alias sf='php bin/console'
alias sf2='php app/console'

alias zshconfig="vim ~/.zshrc"
#################

# test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Syntax Highlight Pluggin
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

function homestead() {
    ( cd ~/Homestead && vagrant $* )
    }

# hub ( command line wrapper for github )
eval "$(hub alias -s)"
