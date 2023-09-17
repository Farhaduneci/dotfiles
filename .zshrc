export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="ys"

ZSH_CACHE_DIR="$HOME/.cache"
ZSH_COMPDUMP="$ZSH_CACHE_DIR/.zcompdump"

COMPLETION_WAITING_DOTS="true"
COMPLETION_WAITING_DOTS="%F{yellow}...%f"

setopt HIST_IGNORE_SPACE
setopt autolist
setopt listtypes

zstyle ':omz:update' mode reminder
zstyle ':omz:update' frequency 7

export NVM_LAZY_LOAD=true
export NVM_COMPLETION=true

ZSH_WEB_SEARCH_ENGINES=(archwiki "https://wiki.archlinux.org/index.php?search=")

plugins=(
  git
  brew
  zsh-nvm
  evalcache
  taskwarrior
  sudo
  golang
  colored-man-pages
  zsh-autosuggestions
  web-search
  copypath
  copyfile
)

export FPATH="$FPATH:/opt/homebrew/share/zsh/site-functions"

source $ZSH/oh-my-zsh.sh
source $HOME/.aliases

export LESS="-iFXMSR"

export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=true

export HISTORY_IGNORE="(ls|cd|pwd|exit|reboot|history|cd -|cd ..|sss)"

export PATH="$PATH:$HOME/bin:/usr/local/bin"
export PATH="$PATH:/opt/homebrew/bin"

export GOPATH=$HOME/go

export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

export PYENV_ROOT="$HOME/.pyenv"

export PATH="$PATH:$PYENV_ROOT/bin"

_evalcache pyenv init -

