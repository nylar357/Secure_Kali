#!/usr/bin/bash


services=("fail2ban" "portsentry")
    for s in "${services[@]}"
    do
        systemctl restart "$s"
        if ( systemctl is-active --quiet "$s" )
        then
            echo "[*] $s is now running"
        else
            echo "[!] $s did not start properly"
        fi
    done

