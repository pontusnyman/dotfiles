echo 'hello zshrc'

#set Variables
#Syntax highlighting for man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
# Homebrew will not ask for perminsion
export HOMEBREW_CASK_OPTS="--no-quarantine"
# Using bat as standard instead of cat
export NULLCMD=bat

#Create Aliases
alias ls="exa -laFh --git"
alias exa="exa -laFh --git"
alias bbd="brew bundle dump --force --describe"
alias trail='bat<<<${(F)path}'

#Customize Promt(s)
PROMPT='
%1~ %L %# '

RPROMPT='%*'

# Add Locations to $PATH 
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Functions
function mkcd() {
 mkdir -p "$@" && cd "$_";
}


