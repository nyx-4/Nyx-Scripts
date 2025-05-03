#!/bin/fish

function PrintUsageMsg
    set_color red
    echo "Invalid URL"
    echo "Usage: ./ghdm.fish [GitHub URL]"
    set_color normal
    exit 1
end

function DownloadFromGH
    string join "/" $argv[1] "/raw.githubusercontent.com" $argv[4] $argv[5] "refs/heads" $argv[7..]
end

if test (count $argv) -eq 0
    set URL (read -p "set_color yellow ; echo -n 'Enter URL: '; set_color normal;")
else
    set URL $argv
end

for url in $URL
    fdm (DownloadFromGH (string split "/" $url))&>/dev/null &
end
