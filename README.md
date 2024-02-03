# Systemd & Podman Quadlet Workshop

Slides can be found in `./slides`. Open the `index.html` file in your browser of choice.

The files referenced within the slides are location in `./systemd` for the section and
`.quadlet` for the Podman Quadlet section.

> Make sure the presenting computer has `podman` installed with a version `>= 4.8.3` and
> `systemd` with a version `>= v250`. Windows and MacOS are not supported. Use a virtual
> machine to execute the commands and scripts.
> [OpenSUSE Tumbleweed](https://get.opensuse.org/tumbleweed/) is recommanded.

The presentation is designed in a way that the commands and scripts shown should be executed
by the presenter and attendees. The presenter should take some time explaining the output in
more detail (Time permitting).

At the bottom of the slides there is a red bar that will reach the right side of the window
in exactly `1h 45m`. Its job is to help the presenter pace the presentation. It can be changed
by modifying the `allottedTime` option within the `./slides/index.html` file.

Both section directories contain addtional examples that expand on the concepts learned.
Going through these examples with the attendees is a bonus! Highly recommanded if there
is enough time after the presentation.

> REMEMBER! Don't blindly run script files without first checking their contents!
> There are no intentionally malicious code within this repository. However, it's
> a good habit to always read the source before executing.

The provided scripts are meant to help speed up the presentation so that attendees aren't
frantically trying to type everything out before the slide changes. They are also meant to
save the presenter time.

## Serve Slides

1. Build the image using `./quadlet/serve-slides/Containerfile`

```bash
# Make sure you run this command in the project root directory!

podman build \
    --target=application \
    -f ./quadlet/serve-slides/Containerfile \
    -t nginx-serve-slides:latest \
    ./
```

2. Copy `./quadlet/serve-slides/serve-slides.container` to `$XDG_CONFIG_HOME/containers/systemd`

```bash
ln "$PWD/quadlet/serve-slides/serve-slides.container" "$XDG_CONFIG_HOME/containers/systemd"
```

3. Reload systemd configuration

```bash
systemctl --user daemon-reload
```

4. Start the `serve-slides.service` unit

```bash
systemctl --user start serve-slides.service
```

5. Open `http://localhost:8000` in your browser

> Step `6` is optional!
> The files required can be downloaded from the git repository. However
> if wifi is spotty, the files can also be downloaded from the computer
> running `serve-slides`. Have attendies navigate to `http://<your-ip>:8000/main.zip`

6. Open port `8000` in your firewall so that others can access the slides and zip file
