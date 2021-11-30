# Filtered Decks & Cramming

<!-- toc -->

When you study a regular deck in Anki, only a limited number of cards
are shown: the cards Anki thinks you are about to forget, and a daily
limit of new cards. This is generally useful, as it ensures you don't
spend more time studying than necessary. But sometimes it can be useful
to step outside of these normal limits, such as when you need to review
for a test, focus on particular material, and so on. To make this
possible, Anki provides a different type of deck called a 'filtered
deck'.

Filtered decks offer a lot of possibilities. They can be used for
previewing cards, cramming cards before a test, studying particular
tags, catching up on a backlog with a particular sort order, reviewing
ahead of schedule, going over the day's failed cards, and more.

## Custom Study

The easiest way to create a filtered deck is with the Custom Study
button, which appears at the bottom of the screen when you click on a
deck. It offers some convenient preset filters for common tasks like reviewing
the cards that you have failed that day. It will create a filtered deck called
"Custom Study Session" and automatically open it for you.

If an existing "Custom Study Session" deck exists, it will be emptied
before a new one is created. If you wish to keep a custom study deck,
you can rename it from the deck list.

Here is a summary of each of the options:

**Increase today's new card limit**  
Add more new cards to the deck you are currently studying. Note that
unlike other options, this does 'not' create a new filtered deck, it
modifies the existing deck.

**Increase today's review card limit**  
If not all reviews due today were shown because of the daily review limit,
this option allows you to show more of them. As with the new cards
option, this modifies the existing deck.

**Review forgotten cards**  
Show all the cards, for which you've answered Again (1) within the number of days
you specify.

**Review ahead**  
Show cards that will be due in the near future (the number of days you
specify). This is useful for working through some of your older cards
before a vacation, but it will not help with cards you have learnt
recently. Please see the [reviewing ahead](#reviewing-ahead) section
below for more info.

**Preview new cards**  
Show cards that you have recently added, without converting them to
review cards as they are answered.

**Study by card state or tag**  
Select a certain number of cards from the current deck to study. You can
choose to select new cards only, due cards only, or all cards; after you
click "Choose Tags", you can also limit the selected cards by tags. If
you wish to see all the cards in the deck (for instance, to study before
a big test), you can set the number of cards to more than the number of
cards in the deck.

## Home Decks

When a card is moved to a filtered deck, it retains a link to the deck,
from which it came. That previous deck is said to be the card's 'home
deck'.

Cards automatically return to their home deck after they are studied in
the filtered deck. This can be after a single review, or after multiple
reviews, depending on your settings.

It is also possible to move all cards back to their home decks at once:

- The "Empty" button in the study overview moves all cards in the
  filtered deck back to their home deck, but does not delete the empty
  filtered deck. This can be useful if you want to fill it again later
  (using the Rebuild button).

- Deleting a filtered deck does the same thing as "Empty" does, but
  also removes the emptied deck from the deck list. No cards are
  deleted when you delete a filtered deck.

In the old scheduler, if you create, rebuild, empty, or delete a
filtered deck while cards are still in learning, they will be turned
back into new cards. In the case of failed reviews in relearning, any
remaining relearning steps will be skipped. This was fixed in the
[v2
scheduler](https://faqs.ankiweb.net/the-anki-2.1-scheduler.html) so cards
are no longer reset.

## Creating Manually

Advanced users can create filtered decks with arbitrary search strings
(or 'filters'),
instead of relying on the preset filters. To create a filtered deck manually,
choose Create Filtered Deck from the Tools menu.

When you click the Build button, Anki finds cards that match the
settings you specified, and temporarily moves them from their existing
decks into your new filtered deck for study.

If you wish to fetch cards again using the same filter options (for
instance, if you want to study all cards with a particular tag every
day), you can use the Rebuild button at the bottom of the deck's
overview screen.

The **search** area controls what cards Anki will gather. All of the
searches possible in the browser are also possible for filtered decks,
such as limiting to tags, finding cards forgotten a certain number of
times, and so on. Please see the [searching](searching.md) section of the
manual for more information on the different possibilities.

Filtered decks cannot pull in cards that are suspended, buried, or already in a
different filtered deck. And if you are using the v1 scheduler, cards in
(re)learning will not be included either. For this reason, a search in the
browser may reveal cards that do not end up in the filtered deck.

The **limit** option controls how many cards will be gathered into the
deck. The order you select controls both the order cards are gathered
in, and the order they will be reviewed in. If you select "most lapses"
and a limit of 20 for example, then Anki will show you only the 20 most
lapsed cards.

## Order

The "cards selected by" option controls the order that cards will appear
in. If the maximum number of cards you select is lower than the number
of cards that match the filter criteria, Anki will exclude the cards at
the end of this sorted list first.

**Oldest seen first**  
Display those cards first, that you haven't seen in reviews for the longest
time.

**Random**  
Randomize the order of all cards that match the filter criteria (use no
set order).

**Increasing intervals**  
Display cards that have the smallest interval first.

**Decreasing intervals**  
Display cards that have the largest interval first.

**Most lapses**  
Display those cards first, that you have failed the most times.

**Order added**  
Display cards that you added first (i.e. those cards that have the earliest
creation date).

**Order due**  
Display cards with the earliest due date first.

**Latest added first**  
Display those cards first, that you have most recently added to the deck.
(This is the opposite of 'Order added'.)

**Relative overdueness**  
Display those cards first, that are most overdue in relation to their current
interval (for instance, a card with a current interval of 5 days
overdue by 2 days displays before a card with a current interval of 5
years overdue by a week). This is useful if you have a large backlog
that may take some time to get through and you want to review those cards
first, that you are most in danger of forgetting.

## Steps & Returning

Please see the section on [learning](studying.md#learningrelearning-cards) as a reminder of how
steps work.

By default, Anki will use the steps of a card’s home deck. If a new card
would normally be reviewed twice when being learnt, the same thing will
happen when you study it in a filtered deck.

Cards return to their home deck when (re)learning is complete. Thus if
you have 3 learning steps, a new card will return to its home deck upon
three presses of "Good" or a single press of "Easy".

**v1 and v2 scheduler**

In the v1 scheduler, the **custom steps** option allows you to override the
home deck’s steps and provide your own steps instead. The provided steps apply to both
cards being learnt, lapsed reviews, and reviews ahead of time. Please note, however, that
from the [v2 scheduler](https://faqs.ankiweb.net/the-anki-2.1-scheduler.html)
filtered decks [no longer support custom steps](https://forums.ankiweb.net/t/filtered-deck-interval-problem/11834/8).

**v3 scheduler**

Filtered decks with rescheduling disabled show 4 buttons in the 
[v3 scheduler](https://faqs.ankiweb.net/the-2021-scheduler.html) - the provided
delay applies to the Again button, and Hard/Good will use 1.5x and 2x the 
provided delay. Easy will remove the card.


## Counts

In a filtered deck, reviews that were already due are displayed in the
review count as normal. Learning cards and non-due reviews are counted
in the new card count, due to how the underlying implementation works.
Reviews that were not due are not scheduled like new cards however:
Anki uses a special algorithm that takes into account how close they
were to their normal due time when reviewed.

## Due Reviews

If the filtered deck includes cards that were due for review, they will
be shown like they would have been in their original deck: they appear
in the review card count at the bottom of the screen, and there are four
choices for how well you remembered. Upon a correct answer, the card
will be moved back to its home deck, and its next delay adjusted using
the home deck's settings. If you forget the card, it will be shown
according to the relearning steps defined in the home deck.

## Reviewing Ahead

If your search included cards that are not due, Anki will show the
reviews ahead of time.

Anki uses a special algorithm for these reviews that takes into account
how early you are reviewing. If the cards were almost due to be shown,
they will be given a new delay similar to what they would have received
if you had reviewed them on time. If the cards are reviewed soon after
they were scheduled however, their new delay will be similar to their
previous delay. This calculation works on a sliding scale.

Because reviewing a card shortly after it is scheduled has little impact
on scheduling (e.g. a card due tomorrow with a one day interval will
remain due tomorrow if reviewed early), **the "review ahead" custom
study setting is not appropriate for repeated use**. If used to go
through a week's worth of cards before a trip, the mature cards will be
rescheduled into the future and the new cards will remain at small
intervals, because you don't know them well enough for them to be
rescheduled further. If you review ahead again the next day, all you'll
end up doing is going through those same new cards again, to little
benefit.

Early reviews are included in the new card count rather than the review
count, and will be shown according to the number of relearning steps
defined in the home deck (unless you have provided custom steps). This
means that if you have customized the number of relearning steps in the
home deck, the non-due card may be shown more than once.

If you have multiple steps, Anki will only consider the first answer
when deciding the next delay, and like relearning in normal decks,
"Good" and "Easy" differ only in the step change and not the resulting
delay.

## Rescheduling

By default, Anki will return cards to their home decks with altered scheduling,
based on your performance in the filtered deck. There is a **reschedule
cards based on my answers** option available which alters this behaviour.

From the [v2 scheduler](https://faqs.ankiweb.net/the-anki-2.1-scheduler.html),
when rescheduling is disabled, cards are shown in a simple "preview mode", and
when they are returned to the original deck, they are returned exactly as they
started.

In the v1 scheduler, cards were presented more similarly to how they normally
are, but studying cards had side effects, and the original position of new cards
was lost when you studied them.

## Catching Up

Filtered decks can be useful for catching up when you've fallen behind
in your reviews. One Anki user describes the way they use the filtered
decks to catch up as follows:

    I did this for a backlog of 800 cards with filtered subdecks. Worked
    very well for me.

    Just Due filter with: "is:due prop:due>-7"

    Over Due filter with: "is:due prop:due<=-7"

    The Just Due deck will then contain cards that became due in the past
    week. That's the deck you should study every day as it gets the cards
    that become due regularly. With this you can study as if there weren't
    any backlog.

    The Over Due deck will contain your backlog — cards which you didn't
    study in time. You can study them the same way you would study new
    cards. They go back into the regular cards, so the number of overdue
    will never grow as long as you keep your Just Due deck in check.

    How long it takes depends on how many overdue cards you study each day
    in addition to the ones that become due regularly. You can still motor
    through them when you feel like it - or you can do a specific number per
    day like you would for new cards. Up to you.
