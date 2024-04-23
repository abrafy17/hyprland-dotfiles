#!/usr/bin/env bash


source_dir_copied="$HOME/github/hyprland-dotfiles/.config"

source_dir_zshrc_copied="$HOME/github/hyprland-dotfiles/.zshrc"

destination_dir_folders="$HOME/.config"

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
