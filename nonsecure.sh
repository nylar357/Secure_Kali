#!/usr/bin/bash


    services=("fail2ban" "portsentry")
    for s in "${services[@]}"
    do
        systemctl stop "$s"
        if ( systemctl is-active "$s" )
        then
            echo "[*] $s is now stopped"
        fi
    done
