# dev-dotfiles

Configuration files for a comfy development environment.

## Installation

### MacOS

1. Install Apple's Command Line Tools, which are prerequisites for Git and Homebrew.
    ```sh
    xcode-select --install
    ```
2. Install Homebrew, followed by the software list in the Brewfile.
    ```sh
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    brew bundle --file ~/.dotfiles/Brewfile
    ```
3. Clone the repository.
    ```sh
    git clone git@github.com:joeyshi12/dev-dotfiles ~/.dotfiles
    ```
4. Create symlinks.
    ```sh
    ~/.dotfiles/scripts/install.sh
    ```

### Arch Linux

1. Clone the repository.
    ```sh
    git clone git@github.com:joeyshi12/dev-dotfiles ~/.dotfiles
    ```
2. Install dependencies from the package lists.
    ```sh
    sudo pacman -S --needed - < ~/.dotfiles/pkglist.txt
    yay -S --needed < ~/.dotfiles/aur_pkglist.txt
    ```
3. Update shell to zsh if your current default shell isn't zsh.
    ```sh
    chsh -s /usr/bin/zsh
    ```
4. Create symlinks.
    ```sh
    ~/.dotfiles/scripts/install.sh
    ```
