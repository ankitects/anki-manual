# Installing & Upgrading Anki on macOS

<!-- toc -->

## Requirements

macOS version requirements are listed on the download page.

If you're on an old machine, you can obtain the old version from the [releases page](https://github.com/ankitects/anki/releases). The Qt5 builds on 24.11 and earlier support macOS 10.14 and later. If your macOS
is between 10.10 and 10.13, you'll need to use [Anki 2.1.35-alternate](https://github.com/ankitects/anki/releases/tag/2.1.35).

## Installing

1. Download Anki from <https://apps.ankiweb.net>.
2. Save the file to your desktop or downloads folder.
3. Open it, and drag Anki to your Applications folder or desktop.
4. Double-click on Anki in the location you placed it.

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
