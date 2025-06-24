# Add to ~/.bashrc:
#   source ~/dzprompt/dzprompt.sh

TERMINAL_TYPE=$(tty)
if [[ "$TERMINAL_TYPE" == /dev/tty* ]]; then
  echo -en "\e]P9982b2b"  # red
  echo -en "\e]PA89b83f"  # green
  echo -en "\e]PBefef60"  # yellow
  echo -en "\e]PC2b4f98"  # blue
fi

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

