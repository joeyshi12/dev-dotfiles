alias ls="ls -G"
alias grep="grep --color=auto"
alias v="nvim"
alias sv="sudo -E nvim"
alias ff="fastfetch"

# Git
alias ga="git add"
alias gaa="git add --all"
alias grm="git rm --cached"
alias gb="git branch"
alias gba="git branch --all"
alias gc="git commit --verbose"
alias gca="git commit --verbose --all"
alias gcl="git clone --recurse-submodules"
alias gm="git merge"
alias gl="git pull"
alias gup="git pull --rebase"
alias gp="git push"
alias gf="git fetch"
alias gco="git checkout"
alias gst="git status"
alias gd="git diff"
alias gdc="git diff --cached"
alias glg="git log --graph"
alias gr="git remote"

# Docker
alias dc='docker-compose'
alias di='docker image'
alias dirm='docker image rm'
alias dps='docker ps'
alias db='docker build'
alias dr='docker run'
alias dst='docker stop'
alias dstp='docker stop'
alias dstpa='docker stop $(docker ps -q)'
alias drm='docker rm'
alias drma='docker rm $(docker ps -q)'
alias da='docker attach'
alias dlg='docker logs'
alias dv='docker volume'
alias dpu='docker pull'

function dsh() {
    docker exec -it $1 '/bin/sh'
}

function y() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
    command yazi "$@" --cwd-file="$tmp"
    IFS= read -r -d '' cwd < "$tmp"
    [ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
    rm -f -- "$tmp"
}

# Tmux
alias tm="tmux"
alias tma="tmux attach-session"
alias tml="tmux list-sessions"
alias tmk="tmux kill-session"
