## Display Issues on Linux

### Qt5

Hardware acceleration defaults to off. Enabling it in the preferences screen and
restarting Anki may make Anki’s interface more responsive, but some users may
experience missing menubars, blank windows or crashes when it is enabled.
(Blank windows may also be caused by [this problem](./blank-window.md).)

You can adjust the display driver in Anki's Preferences screen. We
recommend you try both settings, and see which one works best for you.

If you're unable to open Anki, you can adjust the driver in a terminal, by
writing either `auto` or `software` into `~/.local/share/Anki2/gldriver`. Please
note that if you’re using nouveau, it is known to be buggy, and it only supports
software mode.

### Qt6

Hardware acceleration defaults to on. If you experience blank screens
or display issues, you can try enabling software rendering using the terminal:

```
echo software > ~/.local/share/Anki2/gldriver6
```

If you wish to switch back to the default, change `software` to `auto`, or
remove that file.

In Anki 23.10+, you can also change the graphics driver from preferences screen.
