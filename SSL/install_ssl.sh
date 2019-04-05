#!/bin/bash
apt()
{
    apt update -y
    apt install python3-pip -y
    pip3 install --upgrade setuptools
    pip3 install --upgrade sslyze
    echo " TEST "
    python3 -m sslyze --regular www.yahoo.com:443 www.google.com "[2607:f8b0:400a:807::2004]:443"

}
main()
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
    install_ssl
    echo "======================================"
    echo "   YOU HAVE COMPLETED INSTALLATION    "
    echo "======================================" 
    echo " To run this, run: "
    echo " $ sslyze taget1.com target2.com:443 etc..."
}
main