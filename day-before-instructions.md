## Workshop Instructions

Hello everyone, I hope you all have had a restful weekend! The Systemd & Podman workshop is just one week away! 

### Requirements

If you're planning to attend and would like to follow along then it's important to make sure you have the required packages installed on your distribution of choice.

- `podman >= 4.8.3` 
	- The workshop assumes [Rootless Podman](https://github.com/containers/podman/blob/main/docs/tutorials/rootless_tutorial.md). You could use Rootful Podman, though you'll need to run slightly different commands.
	- `podman >= 4.5` *might* also work but I haven't tested that version.
	- You can check the version with `podman --version`.
- `systemd >= 250`
	- This version was release around April 2020 so *most* newer distributions should be fine.
	- Versions less than that *should* work. Your mileage may vary.
	- You can check the version with `systemctl --version`.

If your distribution does not come with the versions listed above or you're running an OS other than Linux, then I recommend using a virtual machine (VM) running [openSUSE Tumbleweed](https://get.opensuse.org/tumbleweed/), as it's the distribution I'll be using at the workshop. They provide minimal VM images (I'll be using the `x86_64 Cloud image - ~260.4 MiB`) that can be downloaded using the "Alternative Downloads" link on the page linked above.

If you're more comfortable with a GUI then download and run through the installation process using their `AMD 64-bit desktop`  network or offline image. I recommend selecting the KDE desktop environment during the installation process if you do not already have a preference.

### Setup & Installing the Required Packages

Out of the box openSUSE Tumbleweed is already compatible with Rootless Podman. If you're using the cloud image, follow the set up instructions on first boot then run the following commands:

```
zypper install sudo podman
# Change "rtop" to whatever username you'd prefer
useradd -m rtop
passwd rtop
# Logout of root then into the user you've just created
```

If you installed openSUSE Tumbleweed using the offline or network image and completed the installation process. Log in using the user you created during the installation and run the following command:

```
sudo zypper install podman
```

That's it! To confirm everything is working correctly, you should be able to run the command below  (as a non root user) without any issues.

```
podman run --rm hello-world
```

### Need Help?

If you're having trouble getting a working VM or run into any other issues, please reach out for help on the `#linux-users-group` channel on the [Hackforge Discord server](https://discord.gg/uGQ3EaNRSC).
