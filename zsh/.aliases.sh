# vars for this file
EDITOR="nvim"
BROWSER="firefox"
ERROR="> /dev/null 2>&1 &"

# custom commands
alias py="python3"
alias c="clear"
alias speedtest="speedtest-cli"
alias q="exit"

# frequently opened files
alias cfz="$EDITOR ~/.config/zsh/.aliases.sh"
alias cours="cd ~/BTS2 && clear && ls"

# Network commands
alias list="clear; nmcli device wifi list"
alias connect="nmcli device wifi connect Youssef password \"15004000\""
alias show="clear; nmcli device wifi show"

# Browser related commands
alias yt="  $BROWSER youtube.com  $ERROR"
alias gpt=" $BROWSER chatgpt.com  $ERROR"
alias sk="  $BROWSER suckless.org $ERROR"

# allows opening anything through browser
fire() {
  eval "$BROWSER \"$1\" $ERROR"
}

# brightness control
light() {
  eval "brightnessctl set \"$1%\" $ERROR"
}

# Volume control
vol() {
  volume=$1
  MAXVOLUME=60
  if [ "$volume" -gt $MAXVOLUME ]; then
    volume=$MAXVOLUME
  fi
  pactl set-sink-volume @DEFAULT_SINK@ "${volume}%"
}

# commands related to learning
alias pserver="python -m http.server &"

# Learning workflow
alias noc="cd ~/Downloads/youssef/gamedev/NatureOfCode/code/"
