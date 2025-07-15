#!/usr/bin/fish

set DIR_PATH $HOME'/Documents/VSCode/Lessons/Nyx-Scripts/config'
set _files \
    $HOME'/Documents/VSCode/.vscode/.clang-format' \
    $HOME'/.config/foot/foot.ini' \
    $HOME'/.config/starship.toml' \
    $HOME'/.config/fish/' \
    $HOME'/.config/omf/' \
    $HOME'/.config/pandoc/' \
    $HOME'/.config/ags/scripts/templates/terminal/sequences.txt' \

set Code_User \
    $HOME'/.config/Code/User/settings.json' \
    $HOME'/.config/Code/User/keybindings.json' \
    $HOME'/.config/Code/User/snippets/' \
    $HOME'/.config/Code/User/tasks.json' \

set hypr_custom \
    $HOME'/.config/hypr/custom/' \


function backup
    echo "Backing up" $argv[1]
    cp -r $argv[1] $argv[2]
end

mkdir -p $DIR_PATH/ $DIR_PATH/Code/User/ $DIR_PATH/hypr/ 

for file in $_files;      backup $file $DIR_PATH;                end;
for file in $Code_User;   backup $file $DIR_PATH'/Code/User/';   end;
for file in $hypr_custom; backup $file $DIR_PATH'/hypr/'; end;


set -e files
set -e DIR_PATH

