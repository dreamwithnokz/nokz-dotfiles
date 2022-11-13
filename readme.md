# Nokz Dotfiles
Step-by-step setup for new Manjaro i3wm installation.

## Prerequisites

1. `sudo pacman -Syyu`
2. `sudo pacman  -S --needed base-devel git`
3. `yay -S google-chrome`
4. `sudo pacman -S alacritty`
5. `sudo pacman -S pcmanfm`
6. `sudo pacman -S flameshot`
7. `sudo pacman -S compton`
8. `sudo pacman -S nitrogen`

## Set correct time and date

1. `sudo ntpd -qg`
2. `sudo pacman -S ntp`
3. `sudo timedatectl set-ntp true`

## Setup i3wm initially

1. Copy and Paste `.i3/config`
2. Copy and paste `.i3status.conf`
3. `mod+shift+r`

## Swap Caps lock and Left ctrl key

1. `xmodmap -pke > ~/.Xmodmap` Generates .Xmodmap file
2. Copy and paste `.Xmodmap` dotfile from this repo.

## Setup Tmux

1. `sudo pacman -S tmux`
2. Clone [TPM](https://github.com/zsh-users/zsh-history-substring-search) Just need the tpm folder to exist
3. Copy `.tmux.conf` from this repo. Create your own file if it doesn't exists
4. Quit and open tmux again, or source the newly created `.tmux.conf`.
5. `prefix(ctrl+b)+I` Install plugins

## Setup Terminal

1. Setup [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)
2. Reboot to set default shell
2. Setup [starship](https://github.com/starship/starship)
3. Setup [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
4. Setup [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
5. Setup [zsh-history-substring-search](https://github.com/zsh-users/zsh-history-substring-search)
6. Copy and paste `.zshrc`
7. Install [diff-so-fancy](https://github.com/so-fancy/diff-so-fancy#install)
8. Execute commands:
```
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
git config --global interactive.diffFilter "diff-so-fancy --patch"
```

## App Runner (mod+space)

1. sudo pacman -S rofi
2. sudo pacman -S rofi-calc
3. Setup [rofi themes](https://github.com/adi1090x/rofi)
4. Change in `.i3/config` if you want to change the style.

## Set default apps

Copy `.profile`

## Set config for pcmanfm

Copy `.pcmanfm.conf`

## Setup Neovim
1. Install fzf
2. Install node
3. Install [vim-plug](https://github.com/junegunn/vim-plug#neovim):
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
4. Copy vim config files from this repo.
5. `:PlugInstall`

## Setup color emoji

1. `sudo pacman -S noto-fonts-emoji`
2. `sudo nvim /etc/fonts/local.conf`
3. C/P the following:
```
<?xml version='1.0'?>
<!DOCTYPE fontconfig SYSTEM 'fonts.dtd'>
<fontconfig>
 <alias>
  <family>sans-serif</family>
  <prefer>
   <family>Noto Sans</family>
   <family>Noto Color Emoji</family>
   <family>Noto Emoji</family>
   <family>DejaVu Sans</family>
  </prefer>
 </alias>
 <alias>
  <family>serif</family>
  <prefer>
   <family>Noto Serif</family>
   <family>Noto Color Emoji</family>
   <family>Noto Emoji</family>
   <family>DejaVu Serif</family>
  </prefer>
 </alias>
 <alias>
  <family>monospace</family>
  <prefer>
   <family>Noto Mono</family>
   <family>Noto Color Emoji</family>
   <family>Noto Emoji</family>
  </prefer>
 </alias>
 <dir>/usr/local/share/fonts</dir>
</fontconfig>
```
4. `fc-cache -f -v` to regenerate font cache.
5. Restart browser.

## Fix sounds

1. `sudo pacman -S alsa-utils pulseaudio`
2. `sudo pacman -S pa-applet`
3. reboot

## Bloats to Uninstall

`sudo pacman -Rss clipit`

## References:

https://wiki.archlinux.org/title/General_recommendations
