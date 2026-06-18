#!/bin/bash 

nmcli connection modify "Wired connection 1" ipv4.dns "10.0.0.131"
nmcli connection modify "Wired connection 1" ipv4.ignore-auto-dns yes
nmcli connection down "Wired connection 1"
nmcli connection up "Wired connection 1"
nmcli device show | grep DNS
