#!/bin/sh

DOTFILES_DIR="${HOME}/.dotfiles"

is_git_repo() {
    git -C "$1" rev-parse --git-dir >/dev/null 2>&1
}

clone_repo() {
    local repo="$1"
    local target="$2"
    if is_git_repo "${target}"; then
        echo "Skipped: ${target} already exists"
        return 0
    fi
    if ! git clone "${repo}" "${target}"; then
        echo "Error: failed to clone ${repo}" >&2
        exit 1
    fi
    echo "Cloned ${repo} -> ${target}"
}

mkdir -p "${HOME}/.config"
clone_repo "https://github.com/tmux-plugins/tpm.git" "${DOTFILES_DIR}/.config/tmux/plugins/tpm"
clone_repo "https://github.com/joeyshi12/nvim.git" "${HOME}/.config/nvim"

pushd "${DOTFILES_DIR}"
for file in .config/*; do
    ln -sfn "${DOTFILES_DIR}/${file}" "${HOME}/${file}"
    echo "Linked ${HOME}/${file}"
done
popd

kernel=$(uname | tr "[:upper:]" "[:lower:]")
ln -sfn "${DOTFILES_DIR}/shell/${kernel}/.zshenv" ${HOME}
ln -sfn "${DOTFILES_DIR}/shell/${kernel}/.zshrc" ${HOME}

echo "Finished bootstrapping ${kernel} dotfiles"
