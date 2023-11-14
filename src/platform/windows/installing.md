# Installing & Upgrading Anki on Windows

<!-- toc -->

## Requirements

Recent Anki releases require a computer running the 64 bit version of Windows
10 or 11.

- The last Anki release that supported Windows 7 and 8.1 was Anki 2.1.49.
- The last Anki release that supported 32 bit Windows was [Anki 2.1.35-alternate](https://github.com/ankitects/anki/releases/tag/2.1.35).

If you're on an old machine, you can obtain old releases from the [releases page](https://github.com/ankitects/anki/releases).

## Installing

To install Anki:

1. Download Anki from <https://apps.ankiweb.net>. See the next section
   for how to choose between -qt5 and -qt6.
2. Save the installer to your desktop or downloads folder.
3. Double-click on the installer to run it. If you see an error
   message, please see the [installation issues page](https://github.com/ankitects/anki-manual/blob/main/src/platform/windows/installation-issues.md).
4. Once Anki is installed, double-click on the new star icon on your
   desktop to start Anki.

## Qt5 vs. Qt6

Recent Anki versions come in separate Qt5 and Qt6 variants. The Qt6 version is
recommended for most users.

Advantages of the Qt6 version:

- Various bugfixes, including things like better support for less common languages.
- Very large images load faster than the Qt5 version.
- Security updates. Support for the Qt5 library was discontinued in Nov 2020,
  meaning that any security flaws discovered since then will remain unfixed.
- Some users experience freezes when using [a custom shortcut key to switch input languages](https://github.com/ankitects/anki/issues/1105)
  in Qt5.

Disadvantages of the Qt6 version:

- Some add-ons currently only work with the Qt5 version.

## Upgrading

If upgrading from Anki 2.1.6+, there is no need to uninstall the previous
version first. All you need to do is close Anki if it is open, and then follow
the installation steps above. Your cards will be preserved when you upgrade.

If upgrading from an Anki version before 2.1.6, or switching from the standard
to the alternate version or vice versa, we recommend uninstalling the old
version first, which will remove Anki's program data, but not delete your card
data.

If you wish to downgrade to a previous version, please make sure you
[downgrade first](http://changes.ankiweb.net).

## Add-on Compatibility

Some add-ons may not always work with the latest Anki release. If you upgrade to
the latest Anki version and find an add-on you cannot live without stops working,
you can download older Anki versions from the [releases page](https://github.com/ankitects/anki/releases).

## Problems

If you encounter any issues when installing or starting Anki, please see the
following pages:
- [Installation Issues](https://docs.ankiweb.net/platform/windows/installation-issues.html)
- [Startup Issues](https://docs.ankiweb.net/platform/windows/startup-issues.html)
