# ~/.zshrc

[[ $- != *i* ]] && return

setopt prompt_subst
setopt auto_list
setopt hist_find_no_dups
setopt hist_ignore_dups

PROMPT='%~ >> '

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
