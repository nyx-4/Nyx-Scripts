# Sources
source ~/.config/omf/basic.fish
source ~/.config/omf/git.fish

# Aliases
alias H="Hyprland"
alias wifi="iwctl station wlan0 scan && iwctl station wlan0 connect "
alias c="clear"
alias la="ls -A"
alias l="ls"
alias nos="cd /home/KaraKurt/Documents/VSCode/WIP-Projects/Nyx-OS"
alias nosw="cd /home/KaraKurt/Documents/VSCode/WIP-Projects/Nyx-OS.wiki"
alias a2p='pandoc --pdf-engine weasyprint -s --template=$HOME/.config/pandoc/template.html -f markdown-smart --toc  --metadata-file=$HOME/.config/pandoc/meta.json --css=$HOME/.config/pandoc/pandoc.css --css=$HOME/.config/pandoc/breezedark.css --embed-resources -o 241463.pdf'
alias py='ipython3'
alias py3='python3'
alias mr='make run'
alias mb='make build'
alias mc='make clean'
alias mrc='mr; mc'

# Functions
function new50
    mkdir $argv
    cd $argv
    code $argv.py
end


