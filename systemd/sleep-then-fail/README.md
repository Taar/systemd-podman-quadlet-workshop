## Sleep then Exit

This unit is meant to show how a failed unit behaves.
Also illustrates how to configure a unit to automatically
restart when it fails.

```bash
cat ./hard-link-unit.sh
cat ./sleep-then-fail.service

./hard-link-unit.sh
systemctl --user daemon-reload
```

Before starting the unit, open a new terminal to see the
logs happen in real time.

```bash
# -f will continuously output the logs
# it's like `watch <command>` and `tail -f <command>`
journalctl --user -f -u type-notify.service
# Press Ctrl+c to exit
```

Now start the unit

```bash
systemctl --user start sleep-then-fail.service
```

> Don't forget to stop the service and remove the unit file!
