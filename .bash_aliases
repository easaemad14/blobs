# Some quick commands
if [ $UID -ne 0 ]; then
    alias poweroff='sudo poweroff'
    alias reboot='sudo reboot'
    alias update='sudo apt update && sudo apt upgrade'
fi

alias vim='nvim'
alias h='history'
alias j='jobs -l'
alias ports='netstat -tulanp'
alias make='nice make -j`nproc`'
alias mc='make clean'
alias mdc='make distclean'
