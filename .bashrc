# my added PATH                                                                      
# go path
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin:/usr/local/go/bin
# nvim path
export PATH="$PATH:/opt/nvim-linux64/bin"
# for my own scripts
export PATH=$PATH:$HOME/scripts
# for node installed via homebrew
export PATH="/home/linuxbrew/.linuxbrew/opt/node@20/bin:$PATH"
# android-studio
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Set up fzf key bindings and fuzzy completion
# [ -f ~/.fzf.bash ] && source ~/.fzf.bash

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(starship init bash)"
# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"

# yarn config
alias yarn="yarn --network-timeout 300000"
