#!/bin/bash

# Source directory for copied folders
source_dir_copied="$HOME/github/hyprland-dotfiles/.config"

# Source directory for copied .zshrc file
source_dir_zshrc_copied="$HOME/github/hyprland-dotfiles/.zshrc"

# Destination directory for folders
destination_dir_folders="$HOME/.config"

# Destination directory for .zshrc file
destination_dir_zshrc="$HOME"

cp "$source_dir_zshrc_copied" "$destination_dir_zshrc"

for folder in "$source_dir_copied"/*; do
    if [ -d "$folder" ]; then
        folder_name=$(basename "$folder")
        cp -r "$folder" "$destination_dir_folders"
    fi
done

echo "-------------------------------------------"
echo "Success! Reload Waybar and Hyprland :)"
echo "-------------------------------------------"
