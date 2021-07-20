# slax-provision
This is a small slax extension that can be used for provisioning at boot time.
The script `/usr/local/bin/provision` gets triggered by `rc.local` and `systemd`.
When the directory`$LIVEKITNAME/provision` exists, all contained scripts will be
executed during system boot.

The directory `provision` contains small example scripts. One can be used to setup a Wifi connection using `nmcli`. Another installs `vim-tiny` via `apt-get`.
