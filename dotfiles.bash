##########################################################
#################### juftin/dotfiles #####################
##########################################################

# get the current directory of this script
export DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Global Shell Aliases
[[ ! -f ${DOTFILES_DIR}/shell/aliases.sh ]] || source ${DOTFILES_DIR}/shell/aliases.sh
# Load Bash Settings
[[ ! -f ${DOTFILES_DIR}/shell/bash/prompt.sh ]] || source ${DOTFILES_DIR}/shell/bash/prompt.sh
