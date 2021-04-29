# Studying

<!-- toc -->

When you have found a deck you like or entered some notes in, it’s time
to start studying.

## Decks

Study in Anki is limited to the currently selected deck as well as any
subdecks it contains.

On the decks screen, your decks will be displayed in a list. There are
two number columns, 'due' and 'new'. 'Due' is the count of waiting
reviews and cards currently in learning. 'New' is the number of new
cards that are ready to be learnt that day.

When you click on a deck, it will become the 'current deck', and Anki
will change to the study screen. You can return to the deck list to
change the currently selected deck at any time by clicking on “Decks” at
the top of the main window. (You can also use the Study
Deck action in the menu to select a new deck from the keyboard, or you
can press the ‘s’ key to study the currently selected deck.)

You can click the gears button to the right of a deck to rename or
delete a deck, change its options, or [export](exporting.md) it.

With the old scheduler, when a deck has subdecks, the cards will appear from [each deck in
turn](studying.md#display-order).

With the [new scheduler](https://faqs.ankiweb.net/the-anki-2.1-scheduler.html),
when a deck has subdecks, reviews are now taken from all children decks
at once. The review limit of the child decks is ignored - only the limit of the
deck you clicked on applies.

## Study Overview

After clicking on a deck to study, you’ll see a screen that shows you
how many cards are due today. This is called the 'deck overview' screen.
The cards are split into three types:

- **New** refers to cards that you have downloaded or entered in, but
  have never been studied before.

- **Learning** refers to cards that were seen for the first time
  recently, and are still being learnt.

- **To Review** refers to cards that were previously learnt, and now
  need to be reviewed so you don’t forget them.

To start a study session, click the **Study Now** button. Anki will
proceed to show you cards until the cards to be shown for the day have
run out.

While studying, you can return to the overview by pressing the “s” key
on your keyboard.

## Questions

When a card is shown, only the question is shown at first. After
thinking about the answer, either click the **Show Answer** button, or
press the spacebar. The answer will then be shown. It’s okay if it takes
you a little while to recall the answer, but as a general rule if you
can’t answer within about 10 seconds, it’s probably better to give up
and show the answer than keep struggling to remember.

When the answer is shown, you should compare the answer you thought of
with the answer which is shown and tell Anki how well you remembered. If
you don’t trust yourself to compare your answer accurately, you can ask
Anki to [prompt you to type in the answer](templates/fields.md#checking-your-answer) rather than
just showing it to you.

The number of buttons available for grading depends on whether the card
is being 'learnt' or 'reviewed'.

## Learning

When learning new cards, or when relearning cards that you have
forgotten, Anki will show you the cards one or more times to help you
memorize them. Each time is called a 'learning step'. By default there
are two steps: 1 minute and 10 minutes. You can change the number of
steps and the delays between them in the [deck options](deck-options.md).

There are three rating buttons when learning:

**Again** moves the card back to the first step.

**Good** moves the card to the next step. If the card was on the final
step, the card is converted into a review card (it 'graduates'). By
default, once the card has reached the end of the learning steps, the
card will be shown again the next day, then at increasingly long delays
(see the next section).

**Easy** immediately converts the card into a review card, even if there
were steps remaining. By default, the card will be shown again 4 days
later, and then at increasingly long delays. In the old scheduler, the "Easy" button will not be
shown if you are in relearning mode and it would give the same interval
as “Good.” With the [new scheduler](https://faqs.ankiweb.net/the-anki-2.1-scheduler.html),
when cards are in relearning, the "Easy" button boosts the interval by 1 day.

When cards are seen for the first time, they start at step one. This
means answering **Good** on a card for the first time will show it one
more time in 10 minutes, and the initial 1 minute step will be skipped.
If you push Again, though, the card will come back in 1 minute.

You can use the 1, 2 and 3 keys on your keyboard to select a particular
button, where 1 is **Again**. Pressing the spacebar will select
**Good**.

If there are no other cards to show you, Anki will show learning cards
again even if their delay has not elapsed completely. If you’d prefer to
wait the full learning delay, you can change this behaviour in the
[preferences](preferences.md).

## Reviewing

When a card has been previously learnt and is ready to be reviewed
again, there are four buttons to rate your answer:

**Again** marks your answer as incorrect and asks Anki to show the card
more frequently in the future. The card is said to have 'lapsed'. Please
see the [lapses](deck-options.md#lapses) section for more information about how lapsed
reviews are handled.

**Hard** shows the card at a slightly longer delay than last time, and
tells Anki to show the card more frequently in the future.

**Good** tells Anki that the last delay was about right, and the card
easiness doesn’t need to be adjusted down or up. At the default starting
easiness, the card will be shown again approximately 2 1/2 times longer
than the previous time, so if you had waited 10 days to see the card
previously, the next delay would be about 25 days.

**Easy** tells Anki you found the delay too short. The card will be
scheduled further into the future than 'Good', and Anki will schedule
the card less frequently in the future. Because 'Easy' rapidly increases
the delay, it’s best used for only the easiest of cards. Usually you
should find yourself answering 'Good' instead.

As with learning cards, you can use 1-4 on the keyboard to select an
answer. Pressing the spacebar will select 'Good'.

## Due Counts

When only the question is shown, Anki shows three numbers like 12 + 34 +
56 at the bottom of the screen. These represent the new cards, cards in
learning, and cards to review. If you’d prefer not to see the numbers,
you can turn them off in Anki’s preferences.

In the old scheduler, the numbers count _reviews_ needed to finish all the
cards in that queue, not the number of _cards_. If you have multiple
steps configured for lapsed cards, the number will increase by more than
one when you fail a card, since that card needs to be shown several times.

In the new scheduler, the numbers count _cards_, so the number will always
increase by one regardless of the steps remaining.

When the answer is shown, Anki shows an estimate of the next time a card
will be shown above each button. If you’d prefer not to see the
estimates, you can disable them in Anki’s [preferences](preferences.md).

Anki additionally adds a small amount of random variation to the next
due times, in order to prevent cards that were introduced together and
always rated the same from always staying next to each other. This
variation is not shown on the time estimates but will be applied after
selecting the button.

## Editing and More

You can click the **Edit** button in the bottom left to edit the current
note. When you finish editing, you’ll be returned to study. The editing
screen works very similarly to the [add notes](editing.md) screen.

At the bottom right of the review screen is a button labeled **More**.
This button provides some other operations you can do on the current
card or note:

**Flag Card**: Adds a colored marker to the card, or toggles it off. Flags will appear during
study, and you can search for flagged cards in the Browse screen. This is useful
when you want to take some action on the card at a later date, such as looking
up a word when you get home.

**Mark Note**: Adds a “marked” tag to the current note, so it can be easily found in the
browser. This is similar to flagging individual cards, but works with a tag
instead, so if the note has multiple cards, all cards will appear in a search
for the marked tag. Most users will want to use flags instead - marking is
mainly left around for compatibility with older Anki versions.

**Bury Card / Note**: Hides a card or all of the note’s cards from review until the next day.
(If you want to unbury cards before then, you can click the “unbury”
button on the [deck overview](studying.md#study-overview) screen.) This is useful if
you cannot answer the card at the moment or you want to come back to it
another time. Burying can also [happen automatically](studying.md#siblings-and-burying) for
cards of the same note.

With the old scheduler, if cards were in learning when they are buried,
they are moved back to the new card queue or review queue prior to being
buried.

With the [new scheduler](https://faqs.ankiweb.net/the-anki-2.1-scheduler.html),
however, burying cards does not reset a card's learning steps.

**Suspend Card / Note**: Hides a card or all of the note’s cards from review until they are
manually unsuspended (by clicking the suspend button in the browser).
This is useful if you want to avoid reviewing the note for some time,
but don’t want to delete it.

With the old scheduler, if cards were in learning when they are
suspended, they are moved back to the new card queue or review queue
prior to being suspended.

With the [new scheduler](https://faqs.ankiweb.net/the-anki-2.1-scheduler.html),
however, suspending cards does not reset a card's learning steps.

**Delete Note**: Deletes the note and all of its cards.

**Options**: Edit the options for the current deck.

**Replay Audio**: If the card has audio on the front or back, play it again.

**Record Own Voice**: Record from your microphone for the purposes of checking your
pronunciation. This recording is temporary and will go away when you
move to the next card. If you want to add audio to a card permanently,
you can do that in the edit window.

**Replay Own Voice**: Replay the previous recording of your voice (presumably after showing
the answer).

## Display Order

Studying will show cards from the selected deck and any decks it
contains. Thus, if you select your “French” deck, the subdecks
“French::Vocab” and “French::My Textbook::Lesson 1” will be shown as
well.

For new cards and reviews, Anki fetches cards from the decks in
alphabetical order. So in the above example, you would get cards first
from “French”, then “My Textbook”, and finally “Vocab”. You can use this
to control the order cards appear in, placing high priority cards in
decks that appear higher in the list. When computers sort text
alphabetically, the “-” character comes before alphabetical characters,
and “\~” comes after them. So you could call the deck “-Vocab” to make
them appear first, and you could call the other deck “\~My Textbook” to
force it to appear after everything else.

New cards and reviews are fetched separately, and Anki won’t wait until
both queues are empty before moving on to the next deck, so it’s
possible you’ll be exposed to new cards from one deck while seeing
reviews from another deck, or vice versa. If you don’t want this, click
directly on the deck you want to study instead of one of the parent
decks.

Since cards in learning are somewhat time-critical, they are fetched
from all decks at once and shown in the order they are due.

To control the order reviews from a given deck appear in, or change new
cards from ordered to random order, please see the [deck
options](deck-options.md). For more fine-grained ordering of new cards, you
can change the order in the [browser](browsing.md).

## Siblings and Burying

Recall from [the basics](getting-started.md) that Anki can create more than one
card for each thing you input, such as a front→back card and a
back→front card, or two different cloze deletions from the same text.
These related cards are called 'siblings'.

When you answer a card that has siblings, Anki can prevent the card’s
siblings from being shown in the same session by automatically 'burying'
them. Buried cards are hidden from review until the clock rolls over to
a new day or you manually unbury them using the “Unbury” button that’s
visible at the bottom of the [deck overview](studying.md#study-overview) screen. Anki
will bury siblings even if the siblings are not in the same deck (for
instance, if you use the [deck override](templates/intro.md) feature).

You can enable burying from the [deck options](deck-options.md) screen -
there are separate settings for new cards and reviews.

Anki will only bury siblings that are new or review cards. It will not
hide cards in learning, as time is of the essence for those cards. On
the other hand, when you study a learning card, any new/review siblings
will be buried.

## Keyboard Shortcuts

Most of the common operations in Anki have keyboard shortcuts. Most of
them are discoverable in the interface: menu items list their shortcuts
next to them, and hovering the mouse cursor over a button will generally
show its shortcut in a tooltip.

When studying, either <kbd>Space</kbd> or <kbd>Enter</kbd> will show the answer. When the
answer is shown, you can use <kbd>Space</kbd> or <kbd>Enter</kbd> to select the Good button.
You can use the <kbd>1</kbd>-<kbd>4</kbd> keys to select a specific ease button. Many people
find it convenient to answer most cards with <kbd>Space</kbd> and keep one finger
on <kbd>1</kbd> for when they forget.

The "Study Deck" item in the Tools menu allows you to quickly switch to
a deck with the keyboard. You can trigger it with the '/' key. When
opened, it will display all of your decks and show a filter area at the
top. As you type characters, Anki will display only decks matching the
characters you type. You can add a space to separate multiple search
terms, and Anki will show only decks that match all the terms. So “ja 1”
or “on1 ja” would both match a deck called “Japanese::Lesson1”.

## Falling Behind

If you fall behind in your reviews, Anki will prioritize cards that have
been waiting the longest. It does this by taking the cards that have
been waiting the longest and showing them to you in a random order up
until your daily review limit. This ordering ensures that no cards will
be left waiting indefinitely, but it means that if you introduce new
cards, their reviews won’t appear until you’ve gotten through your
backlog.

If you wish to change the order of the overdue reviews, you can do so by
creating a [filtered deck](filtered-decks.md).

When you answer cards that have been waiting for a while, Anki factors
in that delay when determining the next time a card should be shown.
Please see the section on Anki’s spaced-repetition
[algorithm](https://faqs.ankiweb.net/due-times-after-a-break.html) for more information.
