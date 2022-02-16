# Delete previous files
echo "Deleting previous files..."
rm -rf ./home

# This script fetches every relevant config file and copies them in the repos

# Files in .config
CONFIG_DOTFILES=(
    sway
    fontconfig
    BetterDiscord
    btop
    wal
    wofi
    spicetify/Themes/Dribbblish 
    spicetify/config-xpui.ini 
    waybar
    alacritty
)

## Copy relevant files from .config
echo "Copying .config files..."

for DOTFILE in "${CONFIG_DOTFILES[@]}"; do
    # Swap `echo` for `nmap` to actually scan

    mkdir -p "./home/.config/${DOTFILE%/*}" 
    cp -r "/home/vagahbond/.config/$DOTFILE" "./home/.config/$DOTFILE"
done

## Fix permissions for next execution to be less cumbersome
echo "Fixing .config files permissions..."
chown $USER -R ./home/.config
chmod +rw -R ./home/.config

# Files in root of home directory
ROOT_DOTFILES=(
    .oh-my-zsh/themes/reyece.zsh-theme
    .cache/wal
)


## Copy relevant files from root of home directory
echo "Copying home directory root files..."

for DOTFILE in "${ROOT_DOTFILES[@]}"; do
    mkdir -p "./home/${DOTFILE%/*}" 
    cp -r "/home/vagahbond/$DOTFILE" "./home/$DOTFILE"
done

## Fix permissions for next execution to be less cumbersome
echo "Fixing home directory root files permissions..."
chown $USER -R ./home
chmod +rw -R ./home
