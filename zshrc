echo 'hello'

#Create Aliases
alias ls='ls -lAFh'

#Customize Promt(s)
PROMPT='
%1~ %L %# '

RPROMPT='%*'


# Functions
function mkcd() {
 mkdir -p "$@" && cd "$_";
}
