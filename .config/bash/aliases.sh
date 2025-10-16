# https://askubuntu.com/questions/22037/aliases-not-available-when-using-sudo
alias sudo='sudo '

# base tools
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias clear='PROMPT_COMMAND="__zoxide_hook"; clear; PROMPT_COMMAND="export PROMPT_COMMAND=\"__zoxide_hook;echo\""'

# installed tools
alias vim='nvim'
alias el='eza'
alias ell='eza -la'

# shortened
alias cl="clear"
alias cls="clear"

# dont use these aliases in containers (distrobox)
if [[ -z "${CONTAINER_ID}" ]] || [[ -z "${container}" ]]; then
    alias dbox="distrobox"
    alias cenv="distrobox enter"
# use these aliases only in containers
else
    alias gh="distrobox-host-exec gh"
    alias z="distrobox-host-exec z"
    alias zi="distrobox-host-exec zi"
    alias zoxide="distrobox-host-exec zoxide"
fi
