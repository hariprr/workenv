
# ~/.zshrc for /bin/zsh
# ~/.bash_profile for mac /bin/bash
# use double-quotes in mac

# prompt
PS1='[\u@\h:\W]$ 

# Ls shortcuts
alias ls="ls --color=auto -FC -B"
alias ll="ls -l "
alias la="ls -a "
alias cll="clear ; ls -l"
alias clls="clear ; ls -FC"   # classify

# Misc shortcuts
alias vi="vim"
alias sea="grep -in"
alias findsubs="grep 'sub '"
alias findit='find . -name "*" | xargs grep -n'
alias finditi='find . -name "*" | xargs grep -ni'
alias findfile='find . -name "*" | grep -n'
alias m="more"
alias mroe="more"
alias null='/dev/null'
alias f="finger"
alias h="history"
alias pud="pushd ."
alias pop="popd"
alias psef="/bin/ps -ef"
