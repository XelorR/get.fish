function get -d "Download things using aria2c, curl or wget"
    if command -v aria2c &>/dev/null
        aria2c --continue --remote-time --max-tries=0 $argv
    else if command -v curl &>/dev/null
        curl --continue-at - --location --progress-bar --remote-name --remote-time $argv
    else if command -v wget &>/dev/null
        wget --continue --progress=bar --timestamping $argv
    end
end
