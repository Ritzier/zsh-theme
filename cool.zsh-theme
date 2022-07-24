# color="%{XXX%}"

function current_time() {
    local time="[$(date +%H:%M:%S)]";
    echo "${time}"
}

function user() {
    echo "%n"
}

function directory() {
    local directory="${PWD/#$HOME/~}";
    echo "${directory}"
}

# PROMPT="$(current_time)"
#PROMPT="$(show)-$(user) "
#PROMPT='%F{240}%n%F{red}@%F{green}%m:%F{141}%d$ %F{reset}'
PROMPT="%F{117}┌─%F{44}$(current_time)%F{1}─%n-[$(user)]%F{11}-[$(directory)]
%F{117}└─>%F{reset} "
