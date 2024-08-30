# my added PATH                                                                      
# go path
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin:/usr/local/go/bin
# nvim path
export PATH="$PATH:/opt/nvim-linux64/bin"

# for my own scripts
export PATH=$PATH:$HOME/scripts

# Set up fzf key bindings and fuzzy completion
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(starship init bash)"

# yarn config
alias yarn="yarn --network-timeout 300000"
