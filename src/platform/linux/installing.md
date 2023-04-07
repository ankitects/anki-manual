# Installing & Upgrading Anki on Linux

<!-- toc -->

It's possible to install Anki on Linux using a variety of methods. The easiest way is to use the official packages, but you can also install Anki from source as shown below.

## Flatpak

If your distribution supports [Flatpak](https://flatpak.org/setup/), you can install Anki from the official [Flathub](https://flathub.org/) repository:

```shell
flatpak install flathub net.ankiweb.Anki
```

It should automatically create a desktop entry that you can use to launch Anki.

## Debian/Ubuntu

If you're using Debian or Ubuntu, you can install Anki from the official repositories:

```shell
sudo apt-get update
sudo apt-get install anki
```

## Fedora/CentOS/RockyLinux

If you're using Fedora or an Enterprise Linux distribution, you can install Anki from the official repositories:

```shell
sudo dnf install anki
```

## Arch Linux

If you're using Arch Linux, you can install Anki from the [Arch User Repository](https://aur.archlinux.org) (AUR):

```shell
git clone https://aur.archlinux.org/anki.git
cd anki
makepkg -si
```

## Installing from source

### Requirements

The packaged version requires a recent 64 bit Intel/AMD Linux with glibc, and common
libraries like libwayland-client and systemd. If you are on a different
architecture, or a barebones Linux distro, you will not be able to use the
packaged version, but you may be able to use the [Python
wheels](https://betas.ankiweb.net/#via-pypipip)
instead.

On recent Ubuntu installations, please use the following before
installing:

```shell
sudo apt install libxcb-xinerama0
```

If Anki fails to start after installing, you may be [missing other libraries](./missing-libraries.md).

Anki's build system only supports glibc, so musl-based distros are not currently supported.

### Installing

To install Anki:

1. Download Anki from <https://apps.ankiweb.net> to your Downloads folder. See the next section
   for how to choose between -qt5 and -qt6.
2. If zstd is not already installed on your system, you'll need to install it (eg `sudo apt install zstd`).
3. Open a terminal and run the following commands, replacing the filename as appropriate.

```shell
tar xaf Downloads/anki-2.1.XX-linux-qt6.tar.zst
cd anki-2.1.XX-linux-qt6
sudo ./install.sh
```

On some Linux systems, you may need to use `tar xaf --use-compress-program=unzstd`.

4. You can then start Anki by typing 'anki' and hitting enter. If you encounter
   any issues, please see the links on the left.

### Qt5 vs. Qt6

Recent Anki versions come in separate Qt5 and Qt6 variants. The Qt6 version
is recommended for most users.

Advantages of the Qt6 version:

- Compatibility with recent glibc versions (fixes [blank screens on recent distros](./blank-window.md)).
- Better HiDPI support.
- Better Wayland support.
- Various bugfixes, including things like better support for less common languages.
- Security updates. Support for the Qt5 library was discontinued in Nov 2020,
meaning that any security flaws discovered since then will remain unfixed.

Disadvantages of the Qt6 version include:

- Some add-ons currently only work with the Qt5 version.

### Upgrading

If you were running Anki from a .deb/.rpm/etc in the past, please make
sure to remove the system version before installing the package
provided here.

If you're upgrading from a previous package, simply repeat the
installation steps to upgrade to the latest version. Your user data
will be preserved.

If you wish to downgrade to a previous version, please make sure you
[downgrade first](http://changes.ankiweb.net).

## Add-on Compatibility

Some add-ons have not been updated to support the latest Anki release yet. If an
add-on you depend on has not been ported to the latest release yet, you may have
more luck with 2.1.44 or later versions from the [releases
page](https://github.com/ankitects/anki/releases).

## Problems

If you encounter any issues when installing or starting Anki, please see the
following links on the left.
