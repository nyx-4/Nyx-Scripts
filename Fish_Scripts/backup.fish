#!/usr/bin/fish

# This files backups my config files to this repo.
# It over-writes my previous configs.

function backup
    # Setting up directory structure
    mkdir -p $DIR_PATH/ $DIR_PATH/fish/ $DIR_PATH/foot/ $DIR_PATH/hypr/custom/ $DIR_PATH/Code/User/
    # Backup .clang-format
    echo "Backing up .clang-format"
    cp ~/Documents/VSCode/.vscode/.clang-format $DIR_PATH/

    # Backup VSCode snippets and settings
    echo "Backing up ~/.config/Code/User"
    cp -r -t $DIR_PATH/Code/User/ ~/.config/Code/User/keybindings.json ~/.config/Code/User/settings.json ~/.config/Code/User/snippets/ ~/.config/Code/User/tasks.json

    # Backup hyprland custom configs
    echo "Backing up ~/.config/hypr/custom/"
    cp -r ~/.config/hypr/custom/ $DIR_PATH/hypr/custom/

    # Backup foot configs
    echo "Backing up ~/.config/foot/foot.ini"
    cp -r ~/.config/foot/foot.ini $DIR_PATH/foot/

    # Backup starship.toml
    echo "Backing up ~/.config/starship.toml"
    cp -r ~/.config/starship.toml $DIR_PATH/

    # Backup omf configs
    echo "Backing up ~/.config/fish/"
    cp -r ~/.config/fish/ $DIR_PATH/

    # Backup omf configs
    echo "Backing up ~/.config/omf/"
    cp -r ~/.config/omf/ $DIR_PATH/
end

function setup

end

set DIR_PATH ~/Documents/VSCode/Lessons/Nyx-Scripts/config
backup
set -e DIR_PATH