# CodeWhisperer pre block. Keep at the top of this file.
if [[ -f "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.pre.zsh" ]]; then
	builtin source "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.pre.zsh"
fi

##########################################################
##################### ZSH SETTINGS #######################
##########################################################

export EDITOR=nano

if [[ $PATH != *"${HOME}/.local/bin"* ]]; then
	mkdir -p "${HOME}/.local/bin"
	export PATH="$PATH:${HOME}/.local/bin"
fi

# source the `.bashrc` file
function sync() {
	echo "Syncing Bash Configuration..."
	source ~/.bashrc
	echo "Bash Configuration Synced!"
}

##########################################################
###################### OH-MY-BASH ########################
##########################################################

export OSH="${HOME}/.oh-my-bash"

# Oh My Bash Settings
OSH_THEME="powerline-multiline"
OMB_PROMPT_SHOW_PYTHON_VENV=true

completions=(
	git
	composer
	ssh
)

aliases=(
	general
)

plugins=(
	git
)

# Environment Variables
[[ ! -f ${HOME}/.bashenv ]] || source ${HOME}/.bashenv
# Aliases
[[ ! -f ${HOME}/.shell_aliases ]] || source ${HOME}/.shell_aliases

source "${OSH}/oh-my-bash.sh"

# CodeWhisperer post block. Keep at the bottom of this file.
if [[ -f "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.post.zsh" ]]; then
	builtin source "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.post.zsh"
fi
# Fig Ignore
