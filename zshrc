echo 'hello zshrc'

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%b >'

#set Variables
#Syntax highlighting for man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
# Homebrew will not ask for perminsion
export HOMEBREW_CASK_OPTS="--no-quarantine"
# Using bat as standard instead of cat
export NULLCMD=bat
export N_PREFIX="$HOME/.n"
export PREFIX="$N_PREFIX"

#Create Aliases
alias ls="exa -laFh --git"
alias exa="exa -laFh --git"
alias bbd="brew bundle dump --force --describe"
alias trail='bat<<<${(F)path}'

#Customize Promt(s)
setopt PROMPT_SUBST
PROMPT='
%1~ %L %# ${vcs_info_msg_0_}'

RPROMPT='%*'

# Add Locations to $PATH Array

typeset -U path

path=(
  "$N_PREFIX/bin"
  $path
  "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
)

# Functions
function mkcd() {
 mkdir -p "$@" && cd "$_";
}


export PATH="/opt/homebrew/opt/php@7.4/bin:$PATH"
