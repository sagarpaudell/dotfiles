# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
unsetopt beep
# Enable colors and change prompt:
autoload -U colors && colors	# Load colors
#PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

PS1="%B%{$fg[white]%}[%{$fg[cyan]%}%n%{$fg[blue]%}@%{$fg[magenta]%}% arch %{$fg[yellow]%}%~%{$fg[white]%}]%{$reset_color%}$%b "

xinput set-prop 11 323 1

alias ls='ls --color'
LS_COLORS='di=1;35:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90:*.png=35:*.gif=36:*.jpg=35:*.c=92:*.jar=33:*.py=93:*.h=90:*.txt=94:*.doc=104:*.docx=104:*.odt=104:*.csv=102:*.xlsx=102:*.xlsm=102:*.rb=31:*.cpp=92:*.sh=92:*.html=96:*.zip=4;33:*.tar.gz=4;33:*.mp4=105:*.mp3=106'
export LS_COLORS





setopt autocd		# Automatically cd into typed directory.


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#SDK exporting - this will solve your issue
export ANDROID_HOME=/home/saga/Android/Sdk 
export PATH=$PATH:~/scripts/

#Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vi mode
bindkey -v
export KEYTIMEOUT=1

#use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select () {
    case $KEYMAP in
         vicmd) echo -ne '\e[1 q';;      # block
         viins|main) echo -ne '\e[5 q';; # beam
    esac
}

source ~/.config/zsh/.zprofile
source ~/.config/zsh/.aliasrc

