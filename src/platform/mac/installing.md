# Installing & Upgrading Anki on macOS

<!-- toc -->

## Requirements

Recent Anki releases require a Mac running macOS 10.13.4 or later.

The last Anki release that supported macOS 10.10 to 10.13.3 was [Anki 2.1.35-alternate](https://github.com/ankitects/anki/releases/tag/2.1.35). If you're on an old machine, you can obtain the old version from the [releases page](https://github.com/ankitects/anki/releases).

## Installing

1. Download Anki from <https://apps.ankiweb.net>. See the next section
   for how to choose between -qt5 and -qt6.
2. Save the file to your desktop or downloads folder.
3. Open it, and drag Anki to your Applications folder or desktop.
4. Double-click on Anki in the location you placed it.

## Qt5 vs. Qt6

Recent Anki versions come in separate Qt5 and Qt6 variants. The Qt6 version
is recommended for most users.

Advantages of the Qt6 version:

- Native support for recent Apple Silicon Macs (faster, better battery life).
- Various bugfixes, including things like better support for less common languages.
- Security updates. Support for the Qt5 library was discontinued in Nov 2020,
  meaning that any security flaws discovered since then will remain unfixed.

Disadvantages of the Qt6 version:

- Tabbed windows (e.g in full screen) are no longer possible.
- Some Mac users have reported that the Intel Qt5 version was faster and
  more reliable for them.
- Some add-ons currently only work with the Qt5 version.

## Upgrading

To upgrade, close Anki if it is open, and then follow the steps above. Drag
the Anki icon into the same location you previously stored it, and when prompted,
overwrite the old version. Your card data will be preserved.

## Homebrew

[Homebrew](https://brew.sh/) users can install Anki using
`brew install --cask anki` in their preferred Terminal application.

Upgrading can be done using `brew upgrade`, and for uninstalling: `brew uninstall --cask anki`

## Add-on Compatibility

Some add-ons may not always work with the latest Anki release. If you upgrade to
the latest Anki version and find an add-on you cannot live without stops working,
you can download older Anki versions from the [releases page](https://github.com/ankitects/anki/releases).

## Problems

If you encounter any issues when installing or starting Anki, please see:
- [Display Issues](display-issues.md)
