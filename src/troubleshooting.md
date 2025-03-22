# Troubleshooting

If you encounter a problem with Anki, please try the following steps in order:

### 1. Restart Anki

Please close Anki, then start it again.

If you are unable to close Anki because of an error message, you can either
terminate Anki using your task manager, or restart your computer. Anki saves
periodically, so you should not lose more than a few minutes of work in most
circumstances.

If the problem does not occur again, you can skip the following steps.

### 2. Check add-ons

Please close Anki, then open it in safe mode by holding down the
<kbd>Shift</kbd> key while starting Anki. Keep holding <kbd>Shift</kbd> down
until the on-screen message informs you that Anki has started in safe mode. 

If the problem goes away, that indicates an add-on is causing the problem.
Remove any add-ons you don't need, and disable half of the others. If the
problem continues, try the other half. Repeat the process until you've figured
out which add-on is causing the problem. Then please report the issue to the
add-on author, using the Copy Debug Info button, and pasting that into the
report.

### 3. Check your Anki version

You can find the version you're using in the **Help → About** or **Anki →
About** menu. If the version you're using is not the latest version published on
<https://apps.ankiweb.net>, please close Anki, install the latest version, and
then start Anki again to see if the problem has gone away.

If you're using Linux, please make sure you can reproduce the error using the
packaged version on the Anki website, as distros often distribute [broken
versions](platform/linux/distro-packages.md).

### 4. Check your database

After restarting Anki, please try the **Tools → Check Database** menu item to
make sure your collection doesn't have any problems.

### 5. Restart your computer

Sometimes restarting your computer may help.

### 6. Change the Video Driver

Crashes and display issues can be caused by the video driver. Changing to a
different video driver may help. Make sure you try all the driver options and
restart Anki after each change.

If you're using Anki version 23.10 or above, the easiest way is to open
**Tools → Preferences** (or **Anki → Preferences** if you're on a Mac) and
change the driver from the dropdown menu.

If you are on an older Anki version or if you cannot access the preferences for
some reason, you can use the command-line instructions instead and manually
change the gldriver file:

- [Windows](https://docs.ankiweb.net/platform/windows/display-issues.html)
- [Mac](https://docs.ankiweb.net/platform/mac/display-issues.html)
- [Linux](https://docs.ankiweb.net/platform/linux/display-issues.html)

### 7. Reset window sizes

Sometimes pressing **reset window sizes** button in the preferences screen
immediately after starting Anki will help.

### 8. If the problem remains

If you've confirmed you are using the latest Anki version, and are still
receiving errors when starting Anki while holding down the shift key,
please [report the problem](./getting-help.md), including the next error you
receive in your post.
