# Installing & Upgrading Anki on macOS

<!-- toc -->

## Requirements

Recent Anki releases require a Mac running macOS 10.13.4 or later.

The last Anki release that supported macOS 10.10 to 10.13.3 was
2.1.35-alternate. If you're on an old machine, you can obtain the old
version from the [releases
page](https://github.com/ankitects/anki/releases).

## Installing

1. Download Anki from <https://apps.ankiweb.net>. See the next section
   for how to choose between -qt5 and -qt6.
2. Save the file to your desktop or downloads folder.
3. Open it, and drag Anki to your Applications folder or desktop.
4. Double-click on Anki in the location you placed it.

## Qt5 vs. Qt6

Recent Anki versions come in separate Qt5 and Qt6 variants. Each version
has some advantages and disadvantages.

Advantages of the Qt6 version:

- Native support for recent Apple Silicon Macs (faster, better battery life).
- Various bugfixes, including things like better support for less common languages.

Disadvantages of the Qt6 version:

- Complex language input (eg Chinese, Hindi, etc) is currently buggy on macOS (fix
  hopefully coming in Anki 2.1.54; in the mean time, either use the Qt5 version, or
  switch to a different app and then back into Anki to temporarily fix the issue).
- Tabbed windows (eg in full screen) are no longer possible.
- Some add-ons currently only work with the Qt5 version.

## Upgrading

To upgrade, close Anki if it is open, and then follow the steps above. Drag
the Anki icon into the same location you previously stored it, and when prompted,
overwrite the old version. Your card data will be preserved.

## Add-on Compatibility

Some add-ons have not been updated to support the latest Anki release yet. If an
add-on you depend on has not been ported to the latest release yet, you may have
more luck with 2.1.44 from the [releases
page](https://github.com/ankitects/anki/releases).

## Problems

If you encounter any issues when installing or starting Anki, please see the
following links on the left.
