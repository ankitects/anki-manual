# Display Issues on macOS

<!-- toc -->

## Qt6 Video Driver

Hardware acceleration defaults to on. This should be fine for most Macs, but if you
are experiencing crashes or display issues, you can try enabling software rendering.

Open Terminal.app, then paste the following and hit enter:

```
echo software > ~/Library/Application\ Support/Anki2/gldriver6
```

It will not print anything. You can then start Anki again.

If you wish to switch back to the default, change `software` to `auto`, or
remove that file.

In Anki 23.10+, you can also change the graphics driver from preferences screen.

## eGPUs

If you experience blank screens when using an external graphics card on a Mac, you can ctrl+click on the Anki app, click "Get Info", and enable the "prefer eGPU" option.

## Monitors with different resolutions

Please see [this forum post](https://forums.ankiweb.net/t/mac-known-issues-wording-suggestion/7331).
