echo 'hello'

#set Variables
#Syntaz higlighting for man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export HOMEBREW_CASK_OPTS="--no-quarantine"

#Create Aliases
# alias ls='ls -lAFh'
alias ls="exa -laFh --git"
alias exa="exa -laFh --git"

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
