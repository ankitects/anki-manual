# Deck Options

<!-- toc -->
Deck options are probably one of the most important things to understand in
order to get the most out of Anki. These options control Anki Scheduler, 
the core of the program, so if inappropriate adjustments are used you could
have to review too many cards every day, getting easily frustrated, or 
you might not see cards in a deck often enough, rendering Anki less 
effective. So please, only change options that you fully understand.
Deck options primarily control the way Anki schedules cards. It is 
recommended that you spend a few weeks with the defaults to get a feel 
for how Anki works before you start adjusting options. Please make sure
you understand the options before changing them, as mistakes could reduce
Anki's effectiveness.

Deck options are accessed by:
- Clicking the gear icon on the 'Decks' screen.
- Selecting a deck on the 'Decks' screen, and then clicking 'Options' 
at the bottom of the screen.
- Clicking on 'More' > 'Options' while in review mode. 
- Pressing "o" while in review mode. 

# Managing Deck Options. 

Anki allows you to share options between different decks, to make
updating options in many decks at once easy. To do this, options are
grouped into an 'options group'. By default, all newly created decks use
the same options group, and decks imported from previous versions of
Anki have separate option groups. 

If you’d like to alter the settings on
one deck but not other decks, click the arrow icon in the top right 
of the Deck Options window. The options are:

- **Save**: Saves the modifications you've made to the current 
preset. 
- **Add**: Add a new preset, with the default options.
- **Clone**: Clone your current present, which is useful if you 
just want to modify certain options, keeping the rest as they are.  
- **Rename**  the current preset.
- **Delete** the current preset, which will require a full synch 
of your datase. After saving your changes, this action cannot be
undone. 
- **Save the current preset to all subdecks**. Each deck has its 
own options. To ensure your settings apply to all of your subdecks,
please use the option to apply to all children while editing the
top level deck.

Options are not retroactive. For example, if you change an option that
controls the delay after failing a card, cards that you failed prior to
changing the option will have the old delay, not the new one.

### Deck options priority. 
As stated above, each deck and subdeck can have its own options. You 
may want your settings being applied to all your subdecks, in which case
you may use the 'Save the current preset to all subdecks'option, but 
you also may want, in some cases, use different settings for different 
subdecks. 

The general rule is that each card will use the options of the deck 
it belongs to, with two exceptions: 
- The 'Daily Limit' options from the deck you select controls the maximum 
number of cards that will be shown in the study session.
- The 'Display Order' options from the deck you select controls the order
in which those cards will be shown in the study session. 

For example, let's say you have this:

- **Deck 1** (Deck options A) - No cards inside
  - **Subdeck 2** (Deck options B)
    - Card B1
    - Card B2
    - ...
  - **Subdeck 3** (Deck options B)
    - Card C1
    - Card C2
    - ...

Deck options A and B are identical, with two exceptions:

   - A: New Cards - Learning steps: 1m 10m
   - B: New Cards - Learning steps: 20m 2h

   - A: Display Order - New/review priority: Mix with reviews
   - B: Display Order - New/review priority: Show after reviews

If you choose to study Deck 1:
- Learning steps for all new cards will be 20m 2h 
- All new cards will be mixed with reviews. 

If you choose to study Deck 2 or Deck 3:
- Learning steps for all new cards will be 20m 2h 
- All new cards will be shown after reviews. 


# Daily Limits
### New cards/day

New cards/day tells Anki how many new cards you’d like introduced on
each day you open the program. Missed days will not cause the cards
to pile up. The limit applies to the current deck and subdecks. 
This means if "French" has a limit of 20 cards and "French::Lesson 1" 
and "French::Lesson 2" both have limits of 15 cards, you’ll get 15 
cards from lesson 1 but only 5 cards from lesson 2.

Studying new cards will temporarily increase the number of reviews
you need to do a day, as freshly learnt material needs to be repeated 
a number of times before the delay between repetitions can increase 
appreciably. If you are consistently learning 20 new cards a day, 
you can expect your daily reviews to be roughly about 200 cards/day. 
You can decrease the reviews required by introducing fewer new cards 
each day, or by turning off new card display until your review burden 
decreases. More than one Anki user has excitedly studied hundreds 
of new cards over their first few days of using the program, and 
then become overwhelmed by the reviews required.

If using [the 2021 scheduler](https://faqs.ankiweb.net/the-2021-scheduler.html),
please keep in mind that the new count is capped by the review count. 
If you have limits of 200 reviews and 20 new cards, and 190 reviews are
due, only 10 new cards will be introduced.

###  Maximum reviews/day
This allows you to set an upper limit on the number of reviews to show each day. 
When this limit is reached, Anki will not show any more review cards 
for the day, even if there are some waiting. If you study 
consistently, this setting can help to smooth out occasional peaks 
in due card counts, and can save you from a heart attack when returning 
to Anki after a week off. When reviews have been hidden due to this 
option, a message will appear in the congratulations screen, 
suggesting you consider increasing the limit if you have time.

With [the 2021 scheduler](https://faqs.ankiweb.net/the-2021-scheduler.html)
, the review limit affects the new limit. For example, if your review limit 
is set to 200, and you have 190 reviews waiting, a maximum of 10 new cards 
will be introduced. If your review limit has been reached, no new cards 
will be shown.

When studying a deck that has subdecks inside it, the limits set on 
each subdeck control the maximum number of cards drawn from that particular 
deck. The selected deck's limits control the total cards that will be shown.

# New Cards

### Learning cards vs graduated cards
The settings on this section will only affect new cards, still in [learning](https://docs.ankiweb.net/studying.html?#learning)
mode. Once the card is graduated (it has been learnt), it will enter [reviewing](https://docs.ankiweb.net/studying.html?#reviewing)
mode and the settings in this sectios are no longer applicable to them. 

The difference between a graduated card and a card in learning phase is
, basically, that a card in learning phase doesn’t have ease, so
pressing “Again” on that card, won’t affect its ease. Graduated cards, on the 
other hand, get an ease value: each time you press 'Again' on a graduated card
, Anki will decrease that card’s ease by 20%,  which will have a strong
impact on future reviews for that card. 

### Learning Steps
Controls the number of learning repetitions, and the delay
between them. One or more delays, separated by spaces must be entered. 
You’ll pass one  learning step on a new/learn card each time you press 
“Good” on that card.

For example, let's say that your learning steps are **1m 10m 1d**. 

- The first one (1m) is for the 'Again' button. When you press again on 
a new/learn card, anki will show you that card again in 1 minute aproximately.

- The second number (10m) is the first learning step. When you press 'Good'
on a new/learn card for the first time, Anki will show you that card 
again in the next 10 minutes aproximately.

- The third number (1 day) is the second learning step. When you press 'Good'
on a new/learn card for the second time anki will show you that card again
the next day.

- From this moment, the cards exits learning phase, it’ll get an ease (Starting ease)
and it will be a graduated card. Remember that pressing 'Again' in 
any step of the learning fase means that Anki will show the card again 
in 1 minute, and you'll need to repeat the whole process.

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

Please see the [learning](studying.md#learning) section for more info on
how the steps work. Also, check [this forum's post](https://forums.ankiweb.net/t/deck-options-explained/213)
for more examples.

### Graduating interval
The delay in days between answering 'Good' on a card with no steps left, 
and seeing the card again.

In our previous example, if you have Graduating Interval setted to 2 days,
When you press 'Good' on the third time anki will show you that card again
after two days. 

### Easy interval
The delay between answering 'easy' on a learning
card and seeing it in review mode for the first time.

In our  example, if you have Easy Interval setted to 4 days,
When you press 'Easy' on any step of the learning phase, the
card will inmediately exit the learning phase and Anki will show
you that card again after four days, in review mode.

### Insertion Order
Controls whether Anki should add new cards into the deck randomly, 
or in order. When you change this option, Anki will re-sort the decks 
using the current option group.  Cards with a lower due number will 
be show first when studying by default. Changing this option will 
automatically update the existing position of new cards. 

One caveat with random order mode: if you review many of your new cards 
and then add more new cards,
the newly added material is statistically more likely to appear than the
previously remaining cards. For example, if you have 100 cards in random 
order, then review the first 50, newly added cards are still given position
1-100, but as you’ve already reviewed the first 50 the newly added cards 
are more likely to appear earlier. To correct this, you can change the order to
ordered mode and back again to force a re-sort.

When you select random order, Anki will randomize your notes, keeping
the cards of a given note close together. The cards of a given note are
shown in the order their card types appear in, so that siblings are
introduced consistently - otherwise you could end up in a state where
some notes had all their cards introduced and other notes had only one
or two. Please see the "bury related" option below for more info.

# Lapses

When you forget a review card, it is said to have 'lapsed', and the card must be relearned. The default
behaviour for lapsed reviews is to reset the interval to 1 (ie, make it
due tomorrow), and put it in the learning queue for a refresher in 10
minutes. This behaviour can be customized with the options listed below.

### Relearning Steps
The same as 'learning steps' for new cards. When you fail a card (press 'Again')
the card enters re-learning phase (same as learning phase) and before it 
becomes a review card again, you’ll have to pass all re-learning steps 
or press 'Easy' on the card.

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

### Minimum interval
Allows you to apply a minimum limit to the above
option. The default setting says that lapses should be reviewed one day
later. The interval must be 1 day or more.

### Leech options
Control the way Anki handles leeches. Please see the
[leeches](leeches.md) section for more information.


# Burying
### Bury new / review siblings until the next day 
Wheter other cards of the same note (eg reverse cards, adjacent cloze
deletions) will be delayed until the next day.

# Display Order
Each deck and subdeck may have its own options. Anki will 
### New card gather priority 
Controls how Anki gather cards from eaach subdeck:
- **Deck:** gather cards from each subdeck in order, and stops when the
limit of the selected deck has been exceeded. This is faster, and 
allows you to priorize subdecks that are closer to the top. 
Decks / subdecks are always ordered alphabetically, so if you
want to move a particular deck to the top or to the buttom of 
the screen, you just need to change it's name. 
- **Ascending Position:** gather cards from all decks before they are
sorted. This ensures cards appear in strict position order (#1, #2, ...)
, even if the parent limit is not high enough to see cards from all decks. 
- **Descending Position:** gather cards from all decks before they are sorted.
This ensures cards appear in reverse position order (#n, #n-1, …), even 
if the parent limit is not high enough to see cards from all decks. 


Please, read more about how position works [here](https://docs.ankiweb.net/browsing.html#cards) and on the 'Insertion
Order' section above. 

### New card sort order 
Controls how cards are sorted **after they have been gathered**. 
By default, Anki sorts by template first, to avoid multiple cards of the
same note from being shown in sucession. 
The availiable options are:
- Card template, then lowest position. 
- Card template, then highest position. 
- Card template, then random. 
- Lowest position
- Highest position
- Random

### New/review priority 
Controls when Anki will show new cards in relation with review cards. 
- Mix new and review cards
- Show new cards after reviews
- Show new cards before reviews

### Interday learning/review priority 
When to show (re)learning cards that cross a day boundary. 
- Mix with reviews
- Show after reviews
- Show before reviews

### Review sort order 
The default order prioritizes cards that have been waiting longest, so
that if you have a backlog of reviews, the longest waiting ones will 
appear first. If you have a large backlog that will take more than a few
days to clear, or wish to see cards in subdeck order, you may find the 
alternate sort orders preferable.
Options are:
- Due date, then random
- Due date, then deck
- Deck, then due date
- Ascending intervals
- Descending intervals

# Timer
Anki monitors how long it takes you to answer each question so that it
can show you how long was spent studying each day. The time taken does
not influence scheduling. The default time is 60 seconds, if you take 
longer than that, Anki assumes you have walked away from your computer 
or have been distracted, and limits the recorded time to 60 seconds, so 
that you don’t end up with inaccurate statistics. 

### Maximum answer seconds 
The maximum number of seconds to record for a single review. If an 
answer exceeds this time (because you stepped away from the screen for 
example), the time taken will be recorded as the limit you have set.

### Show answer timer 
In the review screen, show a timer that counts the number of seconds 
you're taking to review each card.

# Audio
### Don't play audio automatically
By default, Anki automatically plays audio on the front and back of
cards. If you uncheck 'automatically play audio', Anki will not play
audio until you press the replay audio key, `r` or `F5`.

### Always include question side when replaying audio 
This option
controls what happens when you choose to replay audio while the answer
is shown. Please note that it does not control what happens when you
show the answer; for that please see [this section](templates/fields.md#special-fields).

# Advanced
### Maximum interval 
Allows you to place an upper limit on the time Anki
will wait to reshow a card. The default is 100 years; you can decrease
this to a smaller number if you’re willing to trade extra study time for
higher retention.

### Starting ease 
Controls the easiness that cards start out with. It is
set when a card graduates from learning for the first time. It defaults
to 250%, meaning that once you’ve finished learning a card, answering
"Good" on subsequent reviews will increase the delay by approximately
2.5x (eg if the last delay was 10 days, the next delay would be 25
days). Based upon how you rate the card in subsequent reviews, the
easiness may increase or decrease from what it starts out as.

### Easy bonus 
Allows you to set the difference in intervals between
answering 'Good' and 'Easy' on a card. For instance, with the default
value of 130%, Easy will give an interval that is 1.3 times the Good
interval.

### Interval modifier 
allows you to apply a multiplication factor to the
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


### Hard interval 
Specifies what the next interval will be when you
press the Hard button. The percentage is relative to the previous
interval, eg with a default 120%, a card with a 10 day interval will be
given 12 days. 

### New interval 
Controls how much Anki should reduce the previous
interval. It reduces the previous interval to the percentage you
specify. If a card had a 200 day interval, the default of 0% would
reduce the interval to 0 (but see the next option). If you set this
option to 50%, the card would have its interval reduced to 100 days
instead.

### Custom scheduling. 
Affects the entire collection. Use at your own risk!
