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

The default is `software`; the other two drivers you can try are `angle` and `auto`.

## Qt6

Anki 2.1.50+ is available with the more recent Qt6 toolkit. Here, the display
driver cannot be easily changed, and `angle` is not supported anymore at all.
However, it is still possible to use `software` by running Anki from
cmd.exe after executing the following line:

```bat
set QT_OPENGL=software
```

If you want to make this setting permanent, you will have to add this line to the
top of the file anki-console.bat, and run it instead of anki.exe.

## Full screen

Anki 2.1.50+ comes with a full screen mode, but due to various issues, it had to
be disabled while `OpenGL` is used. Turning on software rendering as described
above will allow the full screen option to be used, though please bear in mind
that rendering performance may suffer.
