# Preferences

<!-- toc -->

The preferences are available from the Tools menu on Windows/Linux, or
the Anki menu on a Mac.

## Basic

**Video driver**  
Anki's libraries need a video driver to draw content on the screen.
Due to different hardware and software configurations, the driver that
works best on your machine may vary. ANGLE and OpenGL will perform better
than the software option, but they may not function correctly on some
systems. On Macs, you will almost always want to use the OpenGL option.

**Show play buttons**  
Whether a clickable (re)play button will be shown in the review screen
for cards with audio.

**Interrupt current audio**  
Whether a currently playing audio file should be stopped when answering
a card.

**Paste clipboard images as PNG**  
By default Anki pastes images on the clipboard as JPG files, to save disk space.
You can use the option to paste as PNG images instead. PNG images support
transparent backgrounds and are lossless, but they usually result in much larger
file sizes.

**Paste without Shift strips formatting**  
By default, formatting like bold and colors are kept when pasting,
unless the <kbd>Shift</kbd> key is held down. This option reverses the behaviour.

**Night mode**  
Night mode will cause Anki to show cards as white text on a
black background. Some card templates may need to be modified to work
properly with this option enabled - please see [night mode
styling](templates/styling.md#night-mode) for more information.

**When adding, default to current deck**  
Controls how note types and decks interact. The default of "When adding, default
to current deck" means that Anki saves the last-used note type for each deck and
selects it again then next time you choose the deck (and, in addition, will
start with the current deck selected when choosing Add from anywhere). The other
option, "Change deck depending on note type," saves the last-used deck for each
note type (and opens the add window to the last-used note type when you choose
Add). This may be more convenient if you always use a single note type for each
deck.

## Scheduling

**Show learning cards with larger steps before**  
Only shown when the 2.1 scheduler is enabled. Normally learning cards with a 1+
day delay are shown after normal reviews. If checked, Anki will show them before
normal reviews instead.

**Anki 2.1 scheduler**  
The Anki 2.1 scheduler is documented here:
<https://faqs.ankiweb.net/the-anki-2.1-scheduler.html>

**Mix new cards and reviews**:
This drop-down box controls when new cards are shown: either mixed
with, before, or after all reviews.

**Next day starts at**  
Controls when Anki should start showing the next day’s cards. The default
setting of 4AM ensures that if you’re studying around midnight, you won’t have
two days' worth of cards shown to you in one session. If you stay up very late
or wake up very early, you may want to adjust this to a time you’re usually
sleeping. Note that the start of the next day is relative to your current timezone.

**Learn ahead limit**  
Tells Anki how to behave when there is nothing left to study in the current deck
but cards in learning. The default setting of 20 minutes tells Anki that cards
should be shown early if they have a delay of less than 20 minutes and there’s
nothing else to do. If you set this to 0, Anki will always wait the full delay,
showing the congratulations screen until the remaining cards are ready to be
reviewed.

**Timebox time limit**  
Timeboxing is a technique to help you focus by dividing a longer activity (such
as a 30 minute study session) into smaller blocks. If you set the timebox time
limit to a non-zero number of minutes, Anki will periodically show you how many
cards you’ve managed to study during the prescribed time limit.

## Network

The network tab contains options related to syncing with AnkiWeb.

- When logged in, the **deauthorize** button will log you out.
- When the 'force changes' option is enabled, the next sync will
  ask you whether you wish to upload or download. This is useful if
  you have made some changes accidentally, and wish to overwrite them
  with an older version that is on AnkiWeb.
