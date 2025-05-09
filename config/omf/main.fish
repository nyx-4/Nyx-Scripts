# Sources
source ~/.config/omf/basic.fish
source ~/.config/omf/git.fish

# Aliases
alias H="Hyprland"
alias wifi="iwctl station wlan0 scan && iwctl station wlan0 connect "
alias c="clear"
alias nos="cd /home/KaraKurt/Documents/VSCode/WIP-Projects/Nyx-OS"
alias nosw="cd /home/KaraKurt/Documents/VSCode/WIP-Projects/Nyx-OS.wiki"
alias a2p='pandoc --pdf-engine weasyprint -s --template=$HOME/.config/pandoc/template.html -f markdown-smart --toc  --metadata-file=$HOME/.config/pandoc/meta.json --css=$HOME/.config/pandoc/pandoc.css --css=$HOME/.config/pandoc/breezedark.css --embed-resources -o 241463.pdf'


# Functions



