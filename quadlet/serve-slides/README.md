## Using Auto Update

If the `serve-slides` unit is running and changes have been made.
The `podman auto-update` command can be used to restart the unit
with the latest image.

```bash
podman auto-update --dry-run
```

If `UPDATES` is `false` then there are no changes to apply. Otherwise
run the `podman auto-update` command without the `--dry-run` flag.

To see this how it would work if there is an updated image. Change or
add a random file then rebuild the image using the build command from
`README.md` file in the root directory for this repository.
