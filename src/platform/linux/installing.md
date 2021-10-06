# Installing & Upgrading Anki on Linux

## Requirements

The packaged version requires a recent 64 bit Intel/AMD Linux, and common
libraries like libwayland-client and systemd. If you are on a different
architecture, or a barebones Linux distro, you will not be able to use the
packaged version, but you may be able to use the [Python
wheels](https://github.com/ankitects/anki/blob/main/docs/development.md#pre-built-python-wheels)
instead.

On recent Ubuntu installations, please use the following before
installing:

```shell
sudo apt install libxcb-xinerama0
```

If Anki fails to start after installing, you may be [missing other libraries](./missing-libraries.md).

## Installing

To install Anki:

1. Download Anki from <https://apps.ankiweb.net> to your Downloads folder.
2. Open a terminal and run the following commands, replacing the version
number as appropriate.

```shell
tar xjf Downloads/anki-2.1.48-linux.tar.bz2
cd anki-2.1.48-linux
sudo ./install.sh
```

3. You can then start Anki by typing 'anki' and hitting enter. If you encounter
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

Some add-ons have not been updated to support the latest Anki release yet. If an
add-on you depend on has not been ported to the latest release yet, you may have
more luck with 2.1.44 from the [releases
page](https://github.com/ankitects/anki/releases).


## Problems

If you encounter any issues when installing or starting Anki, please see the
following links on the left.
