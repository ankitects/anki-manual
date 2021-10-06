# Windows display issues

On Windows, there are three ways of content being displayed on screen. The the
default is *software*, which is slower, but the most compatible. There are two
other options that are faster: *OpenGL* and *ANGLE*. They are faster, but they
may not work, or may cause display issues such as missing menubars, blank
windows, and so on. Which one works best will depend on your computer.

The display driver can be adjusted via the Tools>Preferences menu. Make sure
you restart Anki after adjusting it.

If you’re unable to get to Anki’s preferences screen, and restarting Anki a few
times does not help, you may need to manually adjust the graphics driver. You
can do this by starting cmd.exe and typing the following:

```bat
echo auto > %APPDATA%\Anki2\gldriver
```

The default is `software`; the other two drivers you can try are `angle` and `auto`.
