#!/bin/bash
# This is an example provisioning script that runs after system boot.
# A network link (physical or wireless) and IP via DHCP is required.

# We wait for establishing a link for 300 seconds.
timeout=$(date -ud "300 seconds" +%s)
while true; do
   [[ $(date -u +%s) -le $timeout ]] || break
   nmcli general status 2>/dev/null | grep -q ^connected && break
   sleep 15
done

# Check whether we have internet access and install vim-tiny package.
ping -q -c 1 google.com 2>&1 >/dev/null && apt-get update && apt-get install -y vim-tiny