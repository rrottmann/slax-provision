#!/bin/bash -x
# This is a sample script that configures a Wifi profile.

# Making sure that NetworkManager gets started.
systemctl restart NetworkManager
# We wait for NetworkManager for 600 seconds.
timeout=$(date -ud "600 seconds" +%s)
while true; do
   [[ $(date -u +%s) -le $timeout ]] || break
   killall -0 NetworkManager 2>/dev/null && break
   sleep 15
done
nmcli connection add type wifi ssid "This is the Wifi"
nmcli connection modify wifi wifi-sec.key-mgmt wpa-psk
nmcli connection modify wifi wifi-sec.psk "Mandelorean"
nmcli connection modify wifi connection.permissions ''
nmcli connection modify wifi connection.autoconnect yes
nmcli connection up wifi
