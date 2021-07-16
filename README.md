# slax-provision
This is a small slax extension that can be used for provisioning at boot time.
The script `/usr/local/bin/provision` gets triggered `@reboot` by `cron`.
When the directory`$LIVEKITNAME/provision` exists, all `bash` scripts will be
executed during system boot.

The directory `provision` contains a small exampe that installs `vim`.
