# Preferences

<!-- toc -->

The preferences are available from the Tools menu on Windows/Linux, or
the Anki menu on a Mac.

## Appearance

### General

**Language**\
Change your display language. You can help to improve translations [here](https://translating.ankiweb.net/)

### User Interface

**Theme**\
Dark (night) mode will make Anki's interface dark, and will cause cards to be shown as white text on a
black background. Some card templates may need to be modified to work
properly with this option enabled - please see [night mode styling](templates/styling.md#night-mode) for more information.

From 2.1.50+ there is an option to switch to day or night mode automatically.

**User interface size**\
If you find that the interface elements are too small for you, you can
try to increase this setting.

**Reset Windows Sizes**\
This will reset all windows sizes and locations to the default settings.

**Video driver**\
Anki's libraries need a video driver to draw content on the screen.
Due to different hardware and software configurations, the driver that
works best on your machine may vary. ANGLE and OpenGL will perform better
than the software option, but they may not function correctly on some
systems. On Macs, you will almost always want to use the OpenGL option.

Note: If you're using 2.1.50+ (Qt6), please, check [this page](./platform/windows/display-issues.md#qt6).

### Distractions

These options allow you to remove some unnecessary elements from the screen during reviews. You can:

- Hide the top and bottom bar during reviews.
- Enable the "minimalist" mode, making the interface more compact/less fancy.
- Reduce motion, to disable some transitions/animations.
- Switching between native styling and the Anki theme (only on Mac/Linux).

## Review

### Scheduler

**v3 Scheduler**\
Using the Anki v3 scheduler is recommended if you don't use AnkiDroid. It's documented here:\
<https://faqs.ankiweb.net/the-2021-scheduler.html>

**Show learning cards with larger steps before**\
Only shown when the 2.1 scheduler is enabled. Normally learning cards with a 1+
day delay are shown after normal reviews. If checked, Anki will show them before
normal reviews instead.

**Legacy timezone handling**\
Please see here:
<https://faqs.ankiweb.net/timezone-handling-changes.html>

**Next day starts at**\
Controls when Anki should start showing the next day’s cards. The default
setting of 4AM ensures that if you’re studying around midnight, you won’t have
two days' worth of cards shown to you in one session. If you stay up very late
or wake up very early, you may want to adjust this to a time you’re usually
sleeping. Note that the start of the next day is relative to your current timezone.
Also note that any cards that cross a day boundary [will appear at the start of
the day they are scheduled for](./deck-options.md#day-boundaries), just like review cards do.

**Learn ahead limit**\
Tells Anki how to behave when there is nothing left to study in the current deck
but cards in learning. The default setting of 20 minutes tells Anki that cards
should be shown early if they have a delay of less than 20 minutes and there’s
nothing else to do. If you set this to 0, Anki will always wait the full delay,
showing the congratulations screen until the remaining cards are ready to be
reviewed.

**Timebox time limit**\
Timeboxing is a technique to help you focus by dividing a longer activity (such
as a 30 minute study session) into smaller blocks. If you set the timebox time
limit to a non-zero number of minutes, Anki will periodically show you how many
cards you’ve managed to study during the prescribed time limit.

**Mix new cards and reviews**:
Only shown when the v1/v2 schedulers are enabled. This drop-down box controls when
new cards are shown: either mixed with, before, or after all reviews.

### Review

**Show play buttons on cards with audio**\
Whether a clickable (re)play button will be shown in the review screen
for cards with audio.

**Interrupt current audio when answering**\
Whether a currently playing audio file should be stopped when answering
a card.

**Show remaining card count**\
Disable this option to hide the card count at the bottom of the screen.

**Show next review time above answer buttons**\
Useful to know how far in the future your cards are being pushed.

## Editing

### Editing

**Paste clipboard images as PNG**\
By default Anki pastes images on the clipboard as JPG files, to save disk space.
You can use the option to paste as PNG images instead. PNG images support
transparent backgrounds and are lossless, but they usually result in much larger
file sizes.

**Paste without Shift strips formatting**\
By default, formatting like bold and colors are kept when pasting,
unless the <kbd>Shift</kbd> key is held down. This option reverses the behaviour.

**Default deck**\
Controls how note types and decks interact. The default of "When adding, default
to current deck" means that Anki saves the last-used note type for each deck and
selects it again then next time you choose the deck (and, in addition, will
start with the current deck selected when choosing Add from anywhere). The other
option, "Change deck depending on note type," saves the last-used deck for each
note type (and opens the add window to the last-used note type when you choose
Add). This may be more convenient if you always use a single note type for each
deck.

The last used deck/notetype is updated when you add a card. If you change the deck
and close the add window without adding a card, it won't be saved.

### Browsing

**Default search text**\
Allows you to customize the starting search text in the browser (eg, to start
with "deck:current").

**Ignore accents in search (slower)**\
When enabled, simple text searches automatically [ignore accents](./searching.md#ignoring-accentscombining-characters).

### Import/Export

**Legacy import/export handling**\
If enabled, legacy (pre 2.1.55) import / export code will be used. It is recommended to deactivate this option.

## Syncing

This tab contains options related to syncing with AnkiWeb.

### Synchronisation

**Synchronize audio and images too**\
When enabled, media will also be synced with AnkiWeb.

**Automatically sync on profile open/close**\
Disable this if you don't want an automatic sync with AnkiWeb when opening / closing a [profile](./profiles.md).

**Periodically sync media**

**On next sync, force changes on one direction**\
When this option is enabled, the next sync will
ask you whether you wish to upload or download. This is useful if
you have made some changes accidentally, and wish to overwrite them
with an older version that is on AnkiWeb.

### AnkiWeb Account

When logged in, clicking on Log Out will log you out.

### Self-hosted Sync Server

For info on the custom sync server option, see [this section](./sync-server.md).

## Backups

Please see [this](backups.md#automatic-backups) section of the manual.
