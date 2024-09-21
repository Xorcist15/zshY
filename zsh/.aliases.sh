# vars for this file
EDITOR="nvim"
BROWSER="firefox"
ERROR="> /dev/null 2>&1 &"

# custom commands
alias py="python3"
alias c="clear"
alias speedtest="speedtest-cli"
alias q="exit"
alias sn="shutdown now"

# programs
alias vi="nvim"
alias looping="wine $HOME/Downloads/Looping/Looping.exe $ERROR"
alias phpmad="sudo systemctl start httpd && firefox http://overlord/phpmyadmin $ERROR"

# virtual box commands
alias loadvb="~/github/vbscripts/loadvb.sh"
alias unloadvb="~/github/vbscripts/unloadvb.sh"

# frequently opened files
alias cfz="$EDITOR ~/.config/zsh/.aliases.sh"
alias cours="cd ~/github/cours && clear && ls"
alias tasks="$EDITOR ~/github/cours/tasks"
alias gt="cd ~/github && clear && ls"

# Network commands
alias list="clear; nmcli device wifi list"
alias connect="nmcli device wifi connect Youssef password \"15004000\""
alias show="clear; nmcli device wifi show"

# Browser related commands
alias yt="  $BROWSER youtube.com  $ERROR"
alias gpt=" $BROWSER chatgpt.com  $ERROR"
alias sk="  $BROWSER suckless.org $ERROR"
alias ak="  $BROWSER wiki.archlinux.org $ERROR"

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
