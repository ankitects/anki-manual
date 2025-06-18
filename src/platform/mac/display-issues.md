# Display Issues on macOS

<!-- toc -->

## Change the Video Driver

### Changing the Driver From the Preferences Screen
If you're experiencing display issues or crashes in Anki 23.10+, you can try
changing the video driver in the preferences screen by navigating to **Anki →
Preferences** and then selecting the driver from the dropdown menu. After that it
is necessary to restart Anki.

### Changing the Driver From Terminal.app
Older Anki versions did not provide an option in the preferences, but allowed
you to adjust the driver by opening Terminal.app, then pasting the following and hit <kbd>Enter</kbd>:

```
echo software > ~/Library/Application\ Support/Anki2/gldriver6
```

It will not print anything. You can then start Anki again.

If you wish to switch back to the default, change `software` to `auto`, or
remove that file.

## eGPUs

If you experience blank screens when using an external graphics card on a Mac, you can <kbd>Ctrl</kbd>+click on the Anki app, click "Get Info", and enable the "prefer eGPU" option.

## Monitors with Different Resolutions

Please see [this forum post](https://forums.ankiweb.net/t/mac-known-issues-wording-suggestion/7331).
