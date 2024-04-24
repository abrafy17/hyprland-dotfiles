#!/usr/bin/env bash


source_dir="$HOME/github/hyprland-dotfiles/.config"

source_dir_zshrc="$HOME/github/hyprland-dotfiles/.zshrc"

source_dir_wallpaper="$HOME/github/hyprland-dotfiles/wallpaper"

destination_dir_folders="$HOME/.config"

destination_dir_zshrc="$HOME"

destination_dir_wallpaper="$HOME/Pictures"

cp "$source_dir_zshrc" "$destination_dir_zshrc"

cp -r "$source_dir_wallpaper" "$destination_dir_wallpaper"

for folder in "$source_dir"/*; do
    if [ -d "$folder" ]; then
        folder_name=$(basename "$folder")
        cp -r "$folder" "$destination_dir_folders"
    fi
done

echo "-------------------------------------------"
echo "Success! Reload Waybar and Hyprland :)"
echo "-------------------------------------------"
