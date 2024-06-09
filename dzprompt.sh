# Add to ~/.bashrc:
#   source ~/dzprompt/dzprompt.sh

git_branch() {
  branch="$(git branch --show-current 2> /dev/null)"
#  [[ -n $branch ]] && echo "($branch$(git_dirty)) "
  [[ -n $branch ]] && echo "($branch) "
}

git_dirty() {
  [[ $(git status --porcelain) ]] && echo "*"
}

RED='\e[31m'
GREEN='\e[32m'
YELLOW='\e[1;33m'
BLUE='\e[1;34m'
MAGENTA='\e[1;35m'
CYAN='\e[36m'
WHITE='\e[1;37m'
ENDCOLOR='\e[0m'

PS1="\n┌${YELLOW}\u@${GREEN}\H ${BLUE}\w ${RED}\$(git_branch)${ENDCOLOR}\n└> "
