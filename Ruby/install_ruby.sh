#!/bin/bash
install_ruby()
{
    apt update -y
    apt install ruby-full -y
    apt-get install rubygems -y
    gem install thor
    gem install bundler-audit
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
    install_ruby
    echo "======================================"
    echo "   YOU HAVE COMPLETED INSTALLATION    "
    echo "======================================" 
    echo " In order to audit a project's Gemfile.lock run the following:"
    echo " $ bundle audit "
    echo " ... output pf whatever vulnerabilities you have "
    echo " "
    echo " if you want, you can update the DB of vulners by running: "
    echo " $ bundle audit update "
}