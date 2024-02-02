## Type Notify Example

To start this unit, run the following commands:

```bash
cat ./hard-link-unit.sh
cat ./run.sh

# Feel free to test `run.sh` out in the command line :)

./hard-link-unit.sh
systemctl --user daemon-reload
systemctl --user status type-notify.service
```

To see how this works, it's best to open a different
terminal and run the following before starting the
type-notify.service unit

```bash
# -f will continuously output the logs
# it's like `watch <command>` and `tail -f <command>`
journalctl --user -f -u type-notify.service
# Press Ctrl+c to exit
```

Now start the service and watch the order of the logs

```bash
systemctl --user start type-notify.service
```

Should be able to see through the logs how systemd
is managing this unit's process

```bash
systemctl --user stop type-notify.service
```

To see what happend if the process doesn't send `READY=1`,
remove the call to `systemd-notify --ready`.

> Don't forget to stop the service and remove the unit file!
