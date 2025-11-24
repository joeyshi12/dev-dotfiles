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

[[ -f "/usr/share/nvm/nvm.sh" ]] && \
    source "/usr/share/nvm/nvm.sh"  # This loads nvm
[[ -f "/usr/share/nvm/etc/bash_completion.d/nvm" ]] && \
    source "/usr/share/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
