# Windows display issues

<!-- toc -->

On Windows, there are three ways of content being displayed on screen. The
default is _software_, which is slower, but the most compatible. There are two
other options that are faster: _OpenGL_ and _ANGLE_. They are faster, but they
may not work, or may cause display issues such as missing menubars, blank
windows, and so on. Which one works best will depend on your computer.

If and how you can change this display method depends on which Anki version you
are using, more precisely on the version of the used Qt toolkit.

## Qt5

This toolkit is used by all Anki versions prior to 2.1.50.
Here, the display driver can be adjusted via the Tools>Preferences menu. Make sure
you restart Anki after adjusting it.

If you’re unable to get to Anki’s preferences screen, and restarting Anki a few
times does not help, you may need to manually adjust the graphics driver. You
can do this by starting cmd.exe and typing the following:

```bat
echo auto > %APPDATA%\Anki2\gldriver
```

It will not print anything. You can then start Anki again.

The default is `software`; the other two drivers you can try are `angle` and `auto`.

## Qt6

Anki 2.1.50+ is available with the more recent Qt6 toolkit. The new toolkit
defaults to having graphics acceleration enabled. If you run into display issues,
you can try switching to software mode via cmd:

```bat
echo software > %APPDATA%\Anki2\gldriver6
```

Or you can do it via PowerShell:

```powershell
echo software > $env:APPDATA\Anki2\gldriver6
```

It will not print anything. You can then start Anki again.

To revert to the default behaviour, change `software` to `auto`, or delete that file.

In Anki 23.10+, you can also change the graphics driver from preferences screen.

## Full screen

Anki 2.1.50+ comes with a full screen mode, but due to various issues, it had to
be disabled while `OpenGL` is used. Turning on software rendering as described
above will allow the full screen option to be used, though please bear in mind
that rendering performance may suffer.

In Anki 23.10+, full screen mode is supported with the default Direct3D driver.
