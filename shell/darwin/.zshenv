# https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_STATE_HOME="${HOME}/.local/state"
export XDG_CACHE_HOME="${HOME}/.cache"

export VISUAL="nvim"
export EDITOR="${VISUAL}"

export IPYTHONDIR="${XDG_CONFIG_HOME}/ipython"
export JUPYTER_CONFIG_DIR="${XDG_CONFIG_HOME}/jupyter"
export LESSHISTFILE="${XDG_STATE_HOME}/lesshst"
export NODE_REPL_HISTORY="${XDG_STATE_HOME}/node_repl_history"
export MARIADB_HISTFILE="${XDG_STATE_HOME}/mariadb_history"
export SQLITE_HISTORY="${XDG_STATE_HOME}/sqlite_history"
export DOTNET_ROOT="${XDG_DATA_HOME}/dotnet"
export TLDR_CACHE_DIR="${XDG_CACHE_HOME}"
export NVM_DIR="${XDG_DATA_HOME}/nvm"

PATH="${HOME}/.local/bin:${PATH}"
PATH="/opt/homebrew/opt/binutils/bin:${PATH}"
PATH="/opt/homebrew/opt/mysql-client/bin:${PATH}"

eval "$(/opt/homebrew/bin/brew shellenv)"
. "$HOME/.cargo/env"

[[ -f "/opt/homebrew/opt/nvm/nvm.sh" ]] && \
    source "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[[ -f "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ]] && \
    source "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
