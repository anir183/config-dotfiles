# load env vars
[[ -f ~/.config/bash/env_vars.sh ]] && . ~/.config/bash/env_vars.sh

# load aliases
[[ -f ~/.config/bash/aliases.sh ]] && . ~/.config/bash/aliases.sh

# prompt
function color_my_prompt {
    source /usr/share/git/git-prompt.sh
    local __cur_location="\[\033[01;34m\]\w"
    local __git='\[\033[00m\]$(__git_ps1 "(%s) ")'
    local __prompt_tail="\[\033[35m\]>"
    local __reset_color="\[\033[00m\]"

    export PS1="$__cur_location $__git$__prompt_tail$__reset_color "

    # different prompt for containers (distrobox)
    if [[ ! -z "${CONTAINER_ID}" ]] && [[ ! -z "${container}" ]]; then
        local __host="\[\033[01;36m\]\h"
    	export PS1="$__host $__reset_color@ $__cur_location $__git$__prompt_tail$__reset_color "
    fi

    # new line after each command output
    # WARN: make sure __zoxide_hook; is here
    export PROMPT_COMMAND="export PROMPT_COMMAND='__zoxide_hook;echo'"
}
color_my_prompt

# initialize zoxide
# WARN: keep at end
_ZO_DOCTOR=0 # remove bad config error due to PROMPT_COMMAND having echo
eval "$(zoxide init bash)"
