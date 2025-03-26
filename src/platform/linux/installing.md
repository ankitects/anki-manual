# Installing & Upgrading Anki on Linux

<!-- toc -->

## Requirements

The packaged version requires a recent 64 bit Intel/AMD Linux with glibc, and common
libraries like libwayland-client and systemd. If you are on a different
architecture (e.g ARM/AArch64), or a barebones Linux distro, you will not be able to use the
packaged version, but you may be able to use the [Python wheels](https://betas.ankiweb.net/#via-pypipip)
instead.

Debian and derivatives, such as Ubuntu and [Chromebooks with Linux enabled](https://support.google.com/chromebook/answer/9145439?), please use the following before
installing:

```shell
sudo apt install libxcb-xinerama0 libxcb-cursor0 libnss3
```

If Anki fails to start after installing, you may be [missing other libraries](./missing-libraries.md).

If you're on Ubuntu 24.04 and Anki won't start, please see [this thread](https://forums.ankiweb.net/t/issues-running-on-ubuntu-24-04/40974).

Anki's build system only supports glibc, so musl-based distros are not currently supported.

## Installing

To install Anki:

1. Download Anki from <https://apps.ankiweb.net> to your Downloads folder.
2. If zstd is not already installed on your system, you'll need to install it (e.g `sudo apt install zstd`).
3. Open a terminal and run the following commands, replacing the filename as appropriate.

```shell
tar xaf Downloads/anki-2XXX-linux-qt6.tar.zst
cd anki-2XXX-linux-qt6
sudo ./install.sh
```

On some Linux systems, you may need to use `tar xaf --use-compress-program=unzstd`.

4. You can then start Anki by typing `anki` and hitting enter. If you encounter
   any issues, please see the links on the left.

## Upgrading

If you were running Anki from a .deb/.rpm/etc in the past, please make
sure to remove the system version before installing the package
provided here.

If you're upgrading from a previous package, simply repeat the
installation steps to upgrade to the latest version. Your user data
will be preserved.

If you wish to downgrade to a previous version, please make sure you
[downgrade first](http://changes.ankiweb.net).

## Add-on Compatibility

Some add-ons may not always work with the latest Anki release. If you upgrade to
the latest Anki version and find an add-on you cannot live without stops working,
you can download older Anki versions from the [releases page](https://github.com/ankitects/anki/releases).

## Problems

If you encounter any issues when installing or starting Anki, please see the
following pages:

- [Missing Libraries](missing-libraries.md)
- [Display Issues](display-issues.md)
- [Blank Main Window](blank-window.md)
- [Linux Distro Packages](distro-packages.md)
- [Incorrect GTK Theme](gtk-theme.md)
- [Wayland](wayland.md)
- [Input Methods](input-methods.md)
