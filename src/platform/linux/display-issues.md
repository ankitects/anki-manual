## Display Issues on Linux

Hardware acceleration defaults to off on Linux. Enabling it
in the preferences screen and restarting Anki may make Anki’s interface
more responsive, but some users may experience missing menubars, blank
windows or crashes when it is enabled.

You can adjust the display driver in Anki's Preferences screen. We
recommend you try both settings, and see which one works best for you.

If you're unable to open Anki, you can adjust the driver in a terminal,
by writing either `auto` or `software` into
`~/.local/share/Anki2/gldriver`. Please note that if
you’re using nouveau, it is known to be buggy, and it only supports
software mode.
