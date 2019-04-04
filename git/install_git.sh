#!/bin/bash
apt ()
{
    apt install update -y
    apt install git -y
    # install go
    wget https://raw.githubusercontent.com/canha/golang-tools-install-script/master/goinstall.sh
    bash goinstall.sh --64
}
gitsecrets ()
{
    git clone https://github.com/awslabs/git-secrets.git
    cd git-secrets/ && make install && cd ..
}
gitleaks ()
{
    go get -u github.com/zricethezav/gitleaks 
}

main () 
{
    echo "======================================"
    echo "                                      "
    echo "██▄   ████▄ ████▄ █▄▄▄▄ █    ▀▄    ▄  "
    echo "█  █  █   █ █   █ █  ▄▀ █      █  █   "
    echo "█   █ █   █ █   █ █▀▀▌  █       ▀█    "
    echo "█  █  ▀████ ▀████ █  █  ███▄    █     "
    echo "███▀                █       ▀ ▄▀      "
    echo "                   ▀                  "
    echo "======================================"

    if [[ $EUID -ne 0 ]]; then
        echo "This script must be run as root"
        exit 1
    fi
    apt
    gitsecrets
    gitleaks
    echo "======================================"
    echo "   YOU HAVE COMPLETED INSTALLATION    "
    echo "======================================" 
    echo " FOR MORE INFORMATION PLEASE VISIT OFFICIAL DOCS: "
    echo " - GitSecrets https://github.com/awslabs/git-secrets.git"
    echo " - GitLeaks https://github.com/zricethezav/gitleaks "
}