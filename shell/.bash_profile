# Amazon Q pre block. Keep at the top of this file.
if [[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.bash" ]]; then
	builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.bash"
fi

if [[ ! $PATH == *"${HOME}/.local/bin"* && -d "${HOME}/.local/bin" ]]; then
	export PATH="$PATH:${HOME}/.local/bin"
fi

_DOTFILES_DIR="$(dirname "$(dirname "$(readlink -f ~/.bash_profile)")")"
if [[ $PATH != *"${_DOTFILES_DIR}/bin"* ]]; then
	export PATH="$PATH:${_DOTFILES_DIR}/bin"
fi

if [[ ${OSTYPE} == "darwin"* ]]; then
	if [[ $(uname -m) == "arm64" && -f /opt/homebrew/bin/brew ]]; then
		eval "$(/opt/homebrew/bin/brew shellenv)"
	elif [[ $(uname -m) == "x86_64" && -f /usr/local/bin/brew ]]; then
		eval "$(/usr/local/bin/brew shellenv)"
	fi
fi

# pyenv
if [[ -d ${HOME}/.pyenv && -z ${PYENV_ROOT} ]]; then
	export PYENV_ROOT="${HOME}/.pyenv"
	export PATH="${PYENV_ROOT}/bin:${PATH}"
	eval "$(pyenv init -)"
	alias awsume="source \$(pyenv which awsume)"
fi

# rust
[[ ! -f ${HOME}/.cargo/env ]] || source ${HOME}/.cargo/env

# Amazon Q post block. Keep at the bottom of this file.
if [[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.bash" ]]; then
	builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.bash"
fi
# Fig Ignore
