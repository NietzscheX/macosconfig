## base setting
export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8
export TERM=screen-256color


## for alias
alias proxy='export all_proxy=socks5://127.0.0.1:1080'
alias unproxy='unset http_proxy; unset https_proxy'
alias gc='git clone --recurse-submodules '
#alias vim='nvim'
alias top=btop
alias godata="cd /Volumes/HDD/htdocs/go"
alias ll="ls -alh"
alias gf=gf


## for rust
export PATH="$HOME/.cargo/bin:$PATH"


## for golang
export GOPROXY=https://goproxy.io,direct
alias golinux='CGO_ENABLED=auto GOOS=linux GOARCH=amd64 go build -o mainlinux main.go'
alias gowindows='CGO_ENABLED=auto GOOS=windows GOARCH=amd64 go build -o mainwindows.exe main.go'
alias gomac='CGO_ENABLED=auto GOOS=darwin GOARCH=amd64 go build -o mainmac main.go'


## for nodejs
alias cnpm="npm --registry=https://registry.npm.taobao.org \
--cache=$HOME/.npm/.cache/cnpm \
--disturl=https://npm.taobao.org/dist \
--userconfig=$HOME/.cnpmrc"

## for auto complete history
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

## for vim mode
source ~/.zsh/zsh-vi-mode/zsh-vi-mode.plugin.zsh


## for all beautiful
eval "$(starship init zsh)"
