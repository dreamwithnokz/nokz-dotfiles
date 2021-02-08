# Files to upload
dotfiles=(
  ~/.profile
  ~/.tmux.conf
  ~/.Xmodmap
  ~/.Xresources
  ~/.zshrc
  ~/.i3/
  ~/.i3status.conf
  ~/.config/compton.conf
  ~/.config/kritarc
  ~/.config/kritashortcutsrc
  ~/.config/rofi
  ~/.config/nvim/init.vim
  ~/.config/termite/config
  ~/.config/pcmanfm/default/pcmanfm.conf
)

# Creates initial folder then clean it if it exists
mkdir ./dotfiles
rm -rf ./dotfiles/* -v

# Copy files to dotfiles
# TODO: Currently hardcoded for subdirectories, try to refactor this
cp ${dotfiles[*]} ./dotfiles/ -rv
cd dotfiles

# The commands from here are for multiple directories
mkdir ./.config -v
rm -rf ./.config/* -v
mkdir ./.config/nvim -v
rm -rf ./.config/nvim/* -v
mkdir ./.config/termite -v
rm -rf ./.config/termite/* -v
mkdir ./.config/pcmanfm -v
rm -rf ./.config/pcmanfm/* -v
mkdir ./.config/pcmanfm/default -v

mv ./compton.conf ./.config -v
mv ./kritarc ./.config -v
mv ./kritashortcutsrc ./.config -v
mv ./rofi ./.config -v

# Configs with subdirectories inside config
mv ./init.vim ./.config/nvim -v
mv ./config ./.config/termite -v
mv ./pcmanfm.conf ./.config/pcmanfm/default -v

