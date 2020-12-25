# Files to upload
dotfiles=(
	~/.tmux.conf
	~/.Xmodmap
	~/.Xresources
	~/.zshrc
	~/.i3/
	~/.config/compton.conf
  ~/.config/kritarc
  ~/.config/kritashortcutsrc
	~/.config/rofi
	~/.config/nvim/init.vim
	~/.config/termite/config
  ~/.i3status.conf
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

mv ./compton.conf ./.config -v
mv ./kritarc ./.config -v
mv ./kritashortcutsrc ./.config -v
mv ./rofi ./.config -v

# Configs with subdirectories inside config
mv ./init.vim ./.config/nvim -v
mv ./config ./.config/termite -v

