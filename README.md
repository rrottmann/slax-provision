# slax-provision
This is a small slax extension that can be used for provisioning at boot time.
The script `/usr/local/bin/provision` gets triggered by `rc.local` and `systemd`.
When the directory`$LIVEKITNAME/provision` exists, all contained scripts will be
executed during system boot.

The directory `provision` contains a small example that installs `vim-tiny`.
