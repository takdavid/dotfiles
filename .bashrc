alias dotgit="git --git-dir=$(echo ~)/dotfiles/.git --work-tree=$(echo ~)"

export PATH=~/bin:$PATH

# terminal
export HISTSIZE=100000
export HISTFILESIZE=100000
shopt -s histappend
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
