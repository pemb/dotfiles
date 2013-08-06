
# Check for an interactive session
[ -z "$PS1" ] && return

#PS1='[\u@\h \W]\$ '
PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '
VBOX_USB=usbfs

export GREP_COLOR="1;33"
export EDITOR="nano"
alias bzip2='pbzip2 -p4'
alias diff='colordiff'
alias grep='grep --color=auto'
alias more='less'
alias df='df -h'
alias du='du -c -h'
alias mkdir='mkdir -p -v'
alias nano='nano -w'
alias ls='ls -hF --color=auto'
alias cp='cp -i'
alias mv='mv -i'
alias ln='ln -i'

# Bagui chato do carai (ctrl-a e ctrl-q)
stty stop undef
stty start undef

# Aceleração de vídeo em hardware
export LIBVA_DRIVER_NAME=vdpau
export VDPAU_DRIVER=r600
