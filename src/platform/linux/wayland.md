# Wayland

From Anki 2.1.48, you can force Anki to use Wayland by defining ANKI_WAYLAND=1
before starting Anki. Wayland may give you better rendering across multiple
displays, but it is currently off by default, due to the following issues:

- On some distros, windows are rendered without borders.
- Bringing windows to the front is not possible, so for example, clicking on Add
to reveal an existing Add Cards window will not work.
