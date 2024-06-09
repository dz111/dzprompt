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

REDBOLD='\e[1;91m'
GREEN='\e[92m'
YELLOW='\e[93m'
BLUE='\e[94m'
#MAGENTA='\e[1;35m'
#CYAN='\e[36m'
#WHITE='\e[1;37m'
ENDCOLOR='\e[0m'

PS1="\n┌${YELLOW}\u@${GREEN}\H ${BLUE}\w ${REDBOLD}\$(git_branch)${ENDCOLOR}\n└> "

