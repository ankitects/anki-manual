# Deck Options

<!-- toc -->

Deck options are accessed by selecting a deck on the 'Decks' screen, and
then clicking 'Options' at the bottom of the screen.

Anki allows you to share options between different decks, to make
updating options in many decks at once easy. To do this, options are
grouped into an 'options group'. By default, all newly created decks use
the same options group, and decks imported from previous versions of
Anki have separate option groups. If you’d like to alter the settings on
one deck but not other decks, click the gears icon in the top right and
add a new options group.

Please only change options that you fully understand, as inappropriate
adjustments may render Anki less effective.

Options are not retroactive. For example, if you change an option that
controls the delay after failing a card, cards that you failed prior to
changing the option will have the old delay, not the new one.

## New Cards

**Steps** controls the number of learning repetitions, and the delay
between them. Please see the [learning](studying.md#learning) section for an
overview of how the steps work.

Steps over a day (1440 minutes) are supported as well - if you want, you
can define a schedule like 10 minutes, 1 day, 3 days and then finally 7
days before the card becomes a review card.

If there’s nothing else to study, Anki will show cards up to 20 minutes
early by default. The amount of time to look ahead is configurable in
the [preferences](preferences.md). One thing to be aware of is that the
due counts will differ between the deck screen and study screens in this
case. The deck screen will not count cards that are not ready, but the
study screen will. This is done so that you can tell which decks need
your attention.

Anki treats small steps and steps that cross a day boundary differently.
With small steps, the cards are shown as soon as the delay has passed,
in preference to other waiting cards like reviews. This is done so that
you can answer the card as closely to your requested delay as possible.
In contrast, cards that cross a day boundary are scheduled on a per-day
basis like reviews are. When you return to study the next day, the
per-day learning cards will not be shown first, as that can make the
first half of a review session frustratingly difficult. Instead, the
cards will be shown after reviews are completed. They are included in
the review count rather than the learning count, due to the way they are
handled internally.

**Order** controls whether Anki should add new cards into the deck
randomly, or in order. When you change this option, Anki will re-sort
the decks using the current option group. One caveat with random order
mode: if you review many of your new cards and then add more new cards,
the newly added material is statistically more likely to appear than the
previously remaining cards. To correct this, you can change the order to
ordered mode and back again to force a re-sort.

When you select random order, Anki will randomize your notes, keeping
the cards of a given note close together. The cards of a given note are
shown in the order their card types appear in, so that siblings are
introduced consistently - otherwise you could end up in a state where
some notes had all their cards introduced and other notes had only one
or two. Please see the "bury related" option below for more info.

**New cards/day** tells Anki how many new cards you’d like introduced on
each day you open the program. Missed days will not cause the cards to
pile up. The limit applies to the current deck and subdecks. This means
if "French" has a limit of 20 cards and "French::Lesson 1" and
"French::Lesson 2" both have limits of 15 cards, you’ll get 15 cards
from lesson 1 but only 5 cards from lesson 2.

Studying new cards will temporarily increase the number of reviews you
need to do a day, as freshly learnt material needs to be repeated a
number of times before the delay between repetitions can increase
appreciably. If you are consistently learning 20 new cards a day, you
can expect your daily reviews to be roughly about 200 cards/day. You can
decrease the reviews required by introducing fewer new cards each day,
or by turning off new card display until your review burden decreases.
More than one Anki user has excitedly studied hundreds of new cards over
their first few days of using the program, and then become overwhelmed
by the reviews required.

**Graduating interval** is the delay between answering 'Good' on a card
with no steps left, and seeing the card again.

**Easy interval** is the delay between answering 'easy' on a learning
card and seeing it in review mode for the first time.

**Starting ease** controls the easiness that cards start out with. It is
set when a card graduates from learning for the first time. It defaults
to 250%, meaning that once you’ve finished learning a card, answering
"Good" on subsequent reviews will increase the delay by approximately
2.5x (eg if the last delay was 10 days, the next delay would be 25
days). Based upon how you rate the card in subsequent reviews, the
easiness may increase or decrease from what it starts out as.

Turning off **bury related…​** will prevent Anki from [burying
siblings](studying.md#siblings-and-burying), and instead Anki will just try to avoid showing
siblings directly after one another in the same session. For this to
work, your new cards/day setting needs to be large enough for the cards
of multiple notes to be included.

## Reviews

**Maximum reviews/day** allows you to set an upper limit on the number
of reviews to show each day. When this limit is reached, Anki will not
show any more review cards for the day, even if there are some waiting.
If you study consistently, this setting can help to smooth out
occasional peaks in due card counts, and can save you from a heart
attack when returning to Anki after a week off. When reviews have been
hidden due to this option, a message will appear in the congratulations
screen, suggesting you consider increasing the limit if you have time.

**Easy bonus** allows you to set the difference in intervals between
answering 'Good' and 'Easy' on a card. For instance, with the default
value of 130%, Easy will give an interval that is 1.3 times the Good
interval.

**Interval modifier** allows you to apply a multiplication factor to the
intervals Anki generates. At its default of 100% it does nothing; if you
set it to 80% for example, intervals will be generated at 80% of their
normal size (so a 10 day interval would become 8 days). You can thus use
the multiplier to make Anki present cards more or less frequently than
it would otherwise, trading study time for retention or vice versa.

For moderately difficult material, the average user should find they
remember approximately 90% of mature cards that come up for review. You
can find out your own performance by opening the graphs/statistics for a
deck and looking at the Answer Buttons graph - mature retention is the
correct% on the right side of the graph. If you haven’t been studying
long you may not have any mature cards yet. As performance with new
cards and younger cards can vary considerably, it’s a good idea to wait
until you have a reasonable amount of mature reviews before you start
drawing conclusions about your retention rate.

On the SuperMemo website, they suggest that you can find an appropriate
multiplier for a desired retention rate. Their formula boils down to:

    log(desired retention%) / log(current retention%)

Imagine we have a current retention rate of 85% and we want to increase
it to 90%. We’d calculate the modifier as:

    log(90%) / log(85%) = 0.65

You can use Google to [calculate
it](https://www.google.com/search?q=log(90%25)+%2F+log(85%25)) for you.

If you plug the resulting 65% into the interval modifier, you should
find over time that your retention moves closer to your desired
retention.

One important thing to note however is that the tradeoff between time
spent studying and retention is not linear: we can see here that to
increase our retention by 5 percentage points, we’d have to study 35%
more frequently. If the material you are learning is very important then
it may be worth the extra effort – that’s something you’ll need to
decide for yourself. If you’re simply worried that you’re forgetting too
much, you may find investing more time into the initial learning stage
and/or making mnemonics gives you more gain for less effort.

One final thing to note is that Anki forces a new interval to be at
least 1 day longer than it was previously so that you don’t get stuck
reviewing with the same interval forever. If your goal is to repeat a
card once a day for multiple days, you can do that by setting more
learning mode steps instead of by adjusting this modifier.

**Maximum interval** allows you to place an upper limit on the time Anki
will wait to reshow a card. The default is 100 years; you can decrease
this to a smaller number if you’re willing to trade extra study time for
higher retention.

**Hard interval** specifies what the next interval will be when you
press the Hard button. The percentage is relative to the previous
interval, eg with a default 120%, a card with a 10 day interval will be
given 12 days. This option is only available when the [experimental
scheduler](https://faqs.ankiweb.net/the-anki-2.1-scheduler.html) is enabled in the preferences.

Turning off **bury related…​** will prevent Anki from [burying
siblings](studying.md#siblings-and-burying), and instead Anki will just try to avoid showing
siblings directly after one another in the same session.

Review cards are always shown in random order. If you wish to see them
in a different order, you can use a [filtered deck](filtered-decks.md). More
specifically, Anki randomizes reviews by grabbing batches of 50 cards in
the order that they exist in the database, randomizing each batch, then
putting them together. This means that there is a slight bias towards
older cards being shown first, but it prevents individual cards from
showing up in a predictable order.

## Lapses

When you forget a review card, it is said to have 'lapsed'. The default
behaviour for lapsed reviews is to reset the interval to 1 (ie, make it
due tomorrow), and put it in the learning queue for a refresher in 10
minutes. This behaviour can be customized with the options listed below.

If you leave the steps blank, Anki will not place the card back in the
learning queue, and it will be rescheduled as a review with its new
interval determined by the settings below.

The new interval is determined when you answer "Again" to a review card,
not when the card finishes its relearning steps. For this reason, the
"Good" and "Easy" buttons during relearning do not alter the interval
again - they only control which step you are on. If there is only a
single step (the default), the "Easy" button will be hidden, since it
would accomplish the same thing as the "Good" button. If you have 2 or
more steps, "Easy" is not hidden, to allow you to graduate cards from
the queue before all of their steps are finished.

'New interval' controls how much Anki should reduce the previous
interval. It reduces the previous interval to the percentage you
specify. If a card had a 200 day interval, the default of 0% would
reduce the interval to 0 (but see the next option). If you set this
option to 50%, the card would have its interval reduced to 100 days
instead.

'Minimum interval' allows you to apply a minimum limit to the above
option. The default setting says that lapses should be reviewed one day
later. The interval must be 1 day or more.

The leech options control the way Anki handles leeches. Please see the
[leeches](leeches.md) section for more information.

## General

Anki monitors how long it takes you to answer each question so that it
can show you how long was spent studying each day. The time taken does
not influence scheduling. If you take longer than 60 seconds, Anki
assumes you have walked away from your computer or have been distracted,
and limits the recorded time to 60 seconds, so that you don’t end up
with inaccurate statistics. The 'ignore answer times…​' option allows
you to adjust the cutoff threshold. The minimum cutoff is 30 seconds.

If 'show answer timer' is checked, Anki will display the current time
taken for each card in the study area.

By default, Anki automatically plays audio on the front and back of
cards. If you uncheck 'automatically play audio', Anki will not play
audio until you press the replay audio key, `r` or `F5`.

The 'Always include question side when replaying audio' option
controls what happens when you choose to replay audio while the answer
is shown. Please note that it does not control what happens when you
show the answer; for that please see [this section](templates/fields.md#special-fields).

## Description

This section allows you to edit the deck description, which is shown in
the study overview. The description is automatically set when
downloading shared decks. You can delete all the text in the description
if you no longer want to see it in the study overview area.

You can also use HTML in the description—anything that works on a note
should be valid.
