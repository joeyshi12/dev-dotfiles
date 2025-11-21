# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit -d "${HOME}/.cache/zsh/zcompdump-${ZSH_VERSION}"
_comp_options+=(globdots)  # Include hidden files.

HISTSIZE=10000
SAVEHIST=10000
HISTFILE="${XDG_STATE_HOME}/zsh_history"

# Vim-like key-bindings
bindkey -v
bindkey -M viins '^?' backward-delete-char
bindkey -M viins '^H' backward-delete-char
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

[[ -f "/opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh" ]] && \
    source "/opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh"

[[ -f "/opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]] && \
    source "/opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

[[ -f "${HOME}/.dotfiles/shell/darwin/fzf.zsh" ]] && \
    source "${HOME}/.dotfiles/shell/darwin/fzf.zsh"

[[ -f "${HOME}/.dotfiles/shell/aliases.zsh" ]] && \
    source "${HOME}/.dotfiles/shell/aliases.zsh"

# Runs lf and changes user to current lf directory on quit
lf() {
    [ ! -d "${XDG_CACHE_HOME}/lf" ] && mkdir -p "${XDG_CACHE_HOME}/lf"
    local target="${XDG_CACHE_HOME}/lf/lfdir"
    /opt/homebrew/bin/lf -last-dir-path $target
    cd "$(cat $target)"
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
