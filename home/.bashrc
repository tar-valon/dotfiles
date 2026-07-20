#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH="$HOME/.local/bin:$PATH"

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ip='ip -color=auto'
alias hx='helix'

alias rm='rm -Iv'
alias cp='cp -iv'
alias mv='mv -iv'

alias mkdir='mkdir -pv'

alias df='df -h'
alias du='du -h'
alias free='free -h'

alias reload='source ~/.bashrc'

bind 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'
bind 'set bell-style none'


PS1='[\u@\h \W]\$ '

HISTSIZE=100000
HISTFILESIZE=200000
HISTCONTROL=erasedups:ignoredups:ignorespace
HISTTIMEFORMAT="%F %T "

shopt -s histappend
PROMPT_COMMAND='history -a; history -c; history -r'

# fzf integration
eval "$(fzf --bash)"

# Starship prompt
eval "$(starship init bash)"
. "$HOME/.cargo/env"


# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

case ":$PATH:" in
    *:/home/furqan/.juliaup/bin:*)
        ;;

    *)
        export PATH=/home/furqan/.juliaup/bin${PATH:+:${PATH}}
        ;;
esac
# Tab completion for juliaup and julia channel selection
[ -f "/home/furqan/.julia/juliaup/completions/bash.sh" ] && source "/home/furqan/.julia/juliaup/completions/bash.sh"

# <<< juliaup initialize <<<
