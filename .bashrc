# my added PATH                                                                      
# settings for go lang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin:/usr/local/go/bin

# for my own scripts
export PATH=$PATH:$HOME/scripts

# Set up fzf key bindings and fuzzy completion
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

