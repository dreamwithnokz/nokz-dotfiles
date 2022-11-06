# Personal Dotfiles (Step-by-step setup for new Manjaro i3wm)

## Prerequisites

1. `sudo pacman -Syyu`
2. `sudo pacman  -S --needed base-devel git`
3. `yay -S google-chrome`
4. `sudo pacman -S alacritty`
5. `sudo pacman -S pcmanfm`
6. `sudo pacman -S flameshot`
7. `sudo pacman -S compton`
8. `sudo pacman -S nitrogen`

## Setup i3wm initially

1. Copy and Paste `.i3/config`
2. Copy and paste `.i3status.conf`
3. `mod+shift+r`

## Swap Caps lock and Left ctrl key

1. `xmodmap -pke > ~/.Xmodmap` // Generates .Xmodmap file
2. Copy and paste `.Xmodmap` dotfile from this repo.

## Setup Tmux

1. `sudo pacman -S tmux`
2. Clone [TPM](https://github.com/zsh-users/zsh-history-substring-search) // Just need the tpm folder to exist
3. Copy `.tmux.conf` from this repo. // Create your own file if it doesn't exists
4. Quit and open tmux again, or source the newly created `.tmux.conf`.
5. `prefix(ctrl+b)+I` // install plugins

## Setup Terminal

1. Setup [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)
2. Reboot to set default shell
2. Setup [starship](https://github.com/starship/starship)
3. Setup [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
4. Setup [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
5. Setup [zsh-history-substring-search](https://github.com/zsh-users/zsh-history-substring-search)
6. Copy and paste `.zshrc`

## App Runner (mod+space)

1. sudo pacman -S rofi
2. sudo pacman -S rofi-calc
3. Setup [rofi themes](https://github.com/adi1090x/rofi)
*. Change in `.i3/config` if you want to change the style.

## Set default apps

1. Copy `.profile`

## Set config for pcmanfm

1. Copy `.pcmanfm.conf`

## Setup Neovim

## Bloats to Uninstall 

sudo pacman -Rss clipit
