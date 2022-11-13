# Files to upload
dotfiles=(
  ~/.profile
  ~/.tmux.conf
  ~/.Xmodmap
  ~/.zshrc
  ~/.i3/
  ~/.alacritty.yml
  ~/.i3status.conf
  ~/.config/compton.conf
  ~/.config/rofi
  ~/.config/nvim/coc-settings.json
  ~/.config/nvim/init.vim
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
mkdir ./.config/pcmanfm -v
rm -rf ./.config/pcmanfm/* -v
mkdir ./.config/pcmanfm/default -v

mv ./compton.conf ./.config -v
mv ./rofi ./.config -v

# Configs with subdirectories inside config
mv ./init.vim ./.config/nvim -v
mv ./coc-settings.json ./.config/nvim -v
mv ./pcmanfm.conf ./.config/pcmanfm/default -v

