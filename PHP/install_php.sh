#!/bin/bash

install_php()
{
    apt-get install php -y
    wget https://get.symfony.com/cli/installer -O - | bash
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
    install_php
    echo "======================================"
    echo "   YOU HAVE COMPLETED INSTALLATION    "
    echo "======================================" 
    echo "Run the following where your composer.lock is"
    echo " $ symfony security:check"
    echo "If you don't know where your composer.lock is, run : "
    echo " $ find / -name composer.lock "
}
main