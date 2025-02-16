# Windows Display Issues

<!-- toc -->

On Windows, there are three ways of content being displayed on screen. The
default is _software_, which is slower, but the most compatible. There are two
other options that are faster: _OpenGL_ and _ANGLE_. They are faster, but they
may not work, or may cause display issues such as missing menubars, blank
windows, and so on. Which one works best will depend on your computer.


## Changing the Driver From the Preferences Screen
In Anki 23.10+, you can change the graphics driver from preferences screen by
navigating to **Tools → Preferences** and then selecting the driver from the
dropdown menu.


## Changing the Driver From the Command Line
If you run into display issues, you can try switching to software mode via cmd:

```bat
echo software > %APPDATA%\Anki2\gldriver6
```

Or you can do it via PowerShell:

```powershell
echo software > $env:APPDATA\Anki2\gldriver6
```

It will not print anything. You can then start Anki again.

To revert to the default behaviour, change `software` to `auto`, or delete that file.

## Full Screen

Anki 2.1.50+ comes with a full screen mode, but due to various issues, it had to
be disabled while `OpenGL` is used. Turning on software rendering as described
above will allow the full screen option to be used, though please bear in mind
that rendering performance may suffer.

In Anki 23.10+, full screen mode is supported with the default Direct3D driver.
