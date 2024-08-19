# Setup fzf
# ---------
if [[ ! "$PATH" == */home/reed/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/reed/.fzf/bin"
fi

eval "$(fzf --bash)"
