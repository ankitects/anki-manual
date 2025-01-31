## Display Issues on Linux

Hardware acceleration defaults to on. If you experience blank screens
or display issues, you can try enabling software rendering using the terminal:

```
echo software > ~/.local/share/Anki2/gldriver6
```

If you wish to switch back to the default, change `software` to `auto`, or
remove that file.

In Anki 23.10+, you can also change the graphics driver from preferences screen.
