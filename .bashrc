# .bashrc

# source global definitions
if [ -f /etc/bashrc ]; then	# redhat
    . /etc/bashrc
elif [ -f /etc/bash.bashrc ]; then # debian
    . /etc/bash.bashrc
fi

# source the gapp bashrc
if [ -f /gapp/noarch/share/login/gapp.bashrc ]; then
    . /gapp/noarch/share/login/gapp.bashrc
fi

# source alias file
if [ -f ~/.bash_alias ]; then
    . ~/.bash_alias
fi

# coloring prompt
#PS1='\e[33;1m\u@\h: \e[31m\W\e[0m\$ '
#PS1="\[\033[1;34m\][\$(date +%H%M)][\u@\h:\w]$\[\033[0m\] "
#PS1="\e[0;36m[\u@\h \W]\$ \e[m "

### Set color prompt
color_prompt=yes

if [ "$color_prompt" = yes ]; then
    #PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;35m\]\w\[\033[00m\]\$ '
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;35m\]\W\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi


# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

export LS_COLORS=$LS_COLORS:'di=0;35:'

# some more ls aliases
alias ll='ls -alFh'
alias la='ls -A'
alias l='ls -CF'

