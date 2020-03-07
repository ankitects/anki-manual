Frequently Asked Questions
==========================

I haven’t studied for a while, and now the next due times are too big!
----------------------------------------------------------------------

When you use Anki every day, each time a card is answered correctly, it
gets a bigger interval. Let’s assume that 'good' about doubles the
interval. Thus you have a 5 day wait, then a 10 day wait, 20 days, 40
days, and so on.

When people return to their deck after weeks or months of no study,
they’re often surprised by the length intervals have grown to. This is
because Anki considers the actual time the card was unseen, not just the
time it was scheduled for. Thus if the card was scheduled for 5 days but
you didn’t study for a month, the next interval will be closer to 60
days than 10 days.

This is a good thing. If you have successfully remembered a card after a
one month wait, chances are you’ll remember it again after a longer
wait, too. The same principles which make SRS effective in normal use
apply when you’re studying after a delay, too. It also makes little
sense to schedule a card for 10 days in the future if you were able to
easily answer it after a whole month’s wait - you’d be going backwards.

Resetting the deck is an even worse solution. When returning to a deck
after a long absence, you may have forgotten many of your cards, but
chances are you haven’t forgotten them all. Resetting the entire deck
means you have to waste time studying material you already know.

Now you may find overdue cards that you were able to recall, but not
comfortably, since they were not reviewed when they should have been. To
counter this, Anki treats the delay differently depending on your
answer. If you find a card easy, the last interval plus the full delay
are added together, and then used to calculate the next interval. When
you answer good, only half the delay is used. And when you answer hard,
only a quarter of the delay is used, or 0 if you are using the
experimental scheduler. So if a card was due in 5 days, and it’s
answered 20 days late, the next times you’d end up with are
approximately:

-   Hard: (5 + 20/4) \* 1.2 = 12 days (or 6 days with the experimental
    scheduler)

-   Good: (5 + 20/2) \* 2.5 = 37.5 days

-   Easy: (5 + 20) \* 3.25 = 81.25 days

(the factors will actually vary depending on your performance in the
deck)

If you find a card hard, the next interval is quite conservative and is
less than the last wait (25 days). If you find it good, the next
interval is only about 50% higher. And easy increases the interval
aggressively as usual.

So it is recommended that you study as normal when you return to Anki
after a period of absence. But if you absolutely must reset the deck,
you can select the cards to reset in the browser, and use
Edit&gt;Reschedule.

Can I do multiple-choice questions?
-----------------------------------

Multiple choice questions are a poor review tool for a number of
reasons. The reason they are commonly used in an academic setting is
because they are easy to mark, and they allow the person studying to
demonstrate their ability to recognize the correct answer even if they
can’t produce it themselves.

Furthermore, good multiple choice questions have well chosen
"distractors" - answers that are similar to the correct answer. A
computer can look for similarly spelt words, but it is not capable of
choosing good distractors for more complicated topics.

If you are studying for a test and you have a sample test with a
multiple choice question like the following:

    Q: What animal has a really long neck?

    A: 1. A monkey. 2. A giraffe. 3. A donkey. 4. A snail.

Then that question should be rewritten in Anki as follows:

    Q: What animal has a really long neck?

    A: A giraffe.

Or you can add your own choices:

    Q: What animal has a really long neck? (dog/cat/giraffe/penguin)

    A: A giraffe.

Can I link cards together? Add dependencies? How should I handle synonyms?
--------------------------------------------------------------------------

Anki supports links between cards of a note, but not between unrelated
cards. Imagine are you studying Japanese and aiming to be able to both
recognize and reproduce the Japanese. You may enter the word "ookii",
which means "big", and tell Anki to generate two cards - ookii→big and
big→ookii.

In the above situation Anki can space reviews of those two sibling cards
out so that they don’t appear one after the other (see [sibling
spacing](studying.md#siblings-and-burying) in the link at the top of this document).

Some people want to extend this link between arbitrary cards. They want
to be able to tell Anki "after showing me this card, show me that card",
or "don’t show me that card until I know this card well enough". This
might sound like a nice idea in theory, but in practice it is not
practical.

For one, unlike the sibling card case above, you would have to define
all the relations yourself. Entering new notes into Anki would become a
complicated process, as you’d have to search through the rest of the
deck and assign relationships between the old and new material.

Secondly, remember that Anki is using an algorithm to determine when the
optimum time to show you material again is. Adding constraints to card
display that cause cards to display earlier or later than they were
supposed to will make the spaced repetition system less effective,
leading to more work than necessary, or forgotten cards.

The most effective way to use Anki is to make each note you see
independent from other notes. Instead of trying to join similar words
together, you’ll be better off if you can determine the differences
between them. Synonyms are rarely completely interchangeable - they tend
to have nuances attached, and it’s not unusual for a sentence to become
strange if one synonym is replaced with another.

Continuing with the Japanese example earlier, imagine you want to learn
the word "dekai", which also roughly translates to "big", but is a more
colloquial expression. If you still want to review in both directions,
you might make the English prompt of this word "big (more casual)". The
further you progress in your language studies though, the more of a
burden it becomes to define the differences between similar words, which
is why cards asking you to produce a particular word are best left to
the early stage of your studies. With a strong base vocabulary, moving
towards recognition-based study makes more sense, as we all have a much
larger passive vocabulary than our active vocabulary.

As for ensuring that difficult material is introduced after easier
material, a number of existing tools are available. New cards are by
default introduced in the order they are added to the deck, so as long
as the learning materials or sources of information you are using are
adequately graded for your level, material should appear in order of
easiness.

Can I give my notes an arbitrary number of fields?
--------------------------------------------------

Notes are designed to represent 'closely' related information, and to
make it easy to reorganize where that information appears on a card. In
the context of language learning, notes are useful for representing
things like a phrase-translation pair, a phrase-translation-reading
triplet, and so on. All of these relationships are 1:1 - a given phrase
has only one reading, and one translation. (1)

Because of their ability to tie related pieces of information together,
some people try to use notes to tie less closely related information in
their deck together. For example, if they come across two sentences with
the word "completely":

-   He was completely confused.

-   That was completely uncalled for.

Then they put those two sentences in the same note, under the rationale
that since they share a word, they are related. But what if the user
comes across another example sentence?

-   The book confused her.

That sentence shares the word "confused" with a previous sentence. So
should it be in the note for "confused"? Or the note for "completely"?
Or both?

Unlike the phrase-translation pairs mentioned above, if you say
sentences are related if they share a word, then sentences have a
many:many relationship. That is, sentence A may be related to sentence B
and C, sentence B may be related to A and D, and so on. Because the
relationships are complex and overlapping, notes are not a good way to
represent them.

There seem to be two main reasons people try to represent such
relationships in notes:

-   "Because it’s neater to keep all the information in one place". This
    may seem to be the case, but in reality you really don’t save much.
    If you want to see all example sentences that contain the word
    "completely" and each sentence is in a different note, all you have
    to do is search for "completely".

-   "Because I want Anki to separate reviews of cards that share the
    same word". This is related to the previous FAQ question. Defining
    the links between cards is time consuming, and if it were done
    automatically and every card that shared a word were separated from
    other cards that shared a word, it would be both computationally
    prohibitive, and would likely lead to a situation where nothing
    could be shown because it was all related to something else. Yes,
    it’s not ideal for two sentences containing the same word to be
    shown right after each other, but if you add new cards in a random
    order such a situation is unlikely, and the downsides of trying to
    prevent such a situation aren’t worth it. And even if such a
    solution were introduced, it wouldn’t stop you from encountering the
    words in the real world.

\(1\) It is possible for different people to translate the same phrase
in different ways, and different dialects may read the same word
differently, but that is not relevant to the discussion.

Can I host my own AnkiWeb?
--------------------------

Sorry, AnkiWeb is only available as a hosted service.

Why is the Android version free when the iPhone version isn’t?
--------------------------------------------------------------

Working on Anki desktop, AnkiWeb and AnkiMobile is my full time job, and
I need some way of paying the bills. Since I make the desktop & web
versions available for free, I rely on sales of the iPhone app in order
to finance development.

AnkiDroid is written by a separate group of volunteers. Since they based
it on the free desktop version I make available (and rely on AnkiWeb in
order to synchronize decks), they decided to make it freely available as
well.

What spaced repetition algorithm does Anki use?
-----------------------------------------------

Anki’s algorithm is based on the SuperMemo 2 algorithm. For info on
SM-2, please see <http://www.supermemo.com/english/ol/sm2.htm>

Anki’s algorithm differs from SM-2 in some respects. Notably:

-   SM-2 defines an initial interval of 1 day then 6 days. With Anki,
    you have full control over the length of the initial learning steps.
    Anki understands that it can be necessary to see a new card a number
    of times before you’re able to memorize it, and those initial
    "failures" don’t mean you need to be punished by being shown the
    failed card many times over the course of a few days. Performance
    during the learning stage does not reflect performance in the
    retaining stage.

-   Anki uses 4 choices for answering review cards, not 6. There is only
    one 'fail' choice, not 3. The reason for this is that failure
    comprises a small amount of total reviews, and thus adjusting a
    card’s ease can be sufficiently done by simply varying the positive
    answers.

-   Answering cards later than scheduled will be factored into the next
    interval calculation, so you receive a boost to cards that you were
    late in answering but still remembered.

-   Like SM-2, Anki’s failure button resets the card interval by
    default. But the user can choose to have the card’s interval reduced
    instead of being reset completely. Also, you can elect to review
    failed mature cards on a different day, instead of the same day.

-   'Remembered easily' not only increments the ease factor, but adds an
    extra bonus to the current interval calculation. Thus, answering
    'remembered easily' is a little more aggressive than the standard
    SM-2 algorithm.

-   Successive failures while cards are in learning do not result in
    further decreases to the card’s ease. A common complaint with the
    standard SM-2 algorithm is that repeated failings of a card cause
    the card to get stuck in "low interval hell". In Anki, the initial
    acquisition process does not influence a card’s ease.

You can also check out 'sched.py' in Anki’s source code for the
scheduling code. Here is a summary (see the [deck options](deck-options.md)
section for the options that are mentioned in 'italics').

If you press…​

Again  
The card is placed into relearning mode, the ease is decreased by 20
percentage points (that is, 20 is subtracted from the 'ease' value,
which is in units of percentage points), and the current interval is
multiplied by the value of 'new interval' (this interval will be used
when the card exits relearning mode).

Hard  
The card’s ease is decreased by 15 percentage points and the current
interval is multiplied by 1.2.

Good  
The current interval is multiplied by the current ease. The ease is
unchanged.

Easy  
The current interval is multiplied by the current ease times the 'easy
bonus' and the ease is increased by 15 percentage points.

For Hard, Good, and Easy, the next interval is additionally multiplied
by the 'interval modifier'. If the card is being reviewed late,
additional days will be added to the current interval, as described
in a previous FAQ.

There are a few limitations on the scheduling values that cards can
take. Eases will never be decreased below 130%; SuperMemo’s research has
shown that eases below 130% tend to result in cards becoming due more
often than is useful and annoying users. Intervals will never be
increased beyond the value of 'maximum interval'. Finally, all new
intervals (except Again) will always be at least one day longer than the
previous interval.

After you select an ease button, Anki also applies a small amount of
random “fuzz” to prevent cards that were introduced at the same time and
given the same ratings from sticking together and always coming up for
review on the same day. This fuzz does not appear on the interval
buttons, so if you’re noticing a slight discrepancy between what you
select and the intervals your cards actually get, this is probably the
cause.

Why doesn’t Anki use SuperMemo’s latest algorithm?
--------------------------------------------------

The simple answer is that SuperMemo’s latest algorithm is proprietary,
and requires licensing. As Anki is an open source application, it can
only make use of algorithms that have been made freely available.

We’re inclined to believe SuperMemo when they say their newer algorithms
are more efficient, but feel that to a certain extent, it is a case of
diminishing returns. The gains achieved by moving from a traditional
study routine to SM-2 are already great, and by sticking with an open
algorithm, your learning data is not locked into a single product.

Ultimately it’s up to you to decide - if access to the latest and
greatest scheduler is a higher priority than the things that Anki brings
to the table, you may want to check out SuperMemo to see if it is a good
fit for you.

What about SM-5?
----------------

Anki’s scheduler was originally based on
[SM-5](https://www.supermemo.com/english/ol/sm5.htm). Anki’s default of
showing the next interval above each ease button revealed problems with
the implementation - harder cards could end up with greater interval
increases than easy ones, and the ease factors sometimes grew to the
point where a single review could result in a 20-30x increase in
interval.

An attempt was made at the time to correct this by smoothing the optimal
factors matrix - applying a cap on the maximum factor and enforcing a
minimum difference between adjacent ease factors. This addressed the
above problems, but resulted in an optimal factors matrix that had very
little room to move, and the conclusion drawn at the time was that SM-5
was not an improvement over SM-2.

While SM-5 clearly wasn’t working for Anki, in hindsight, it may not
have been fair to assume the issues we encountered were due to
fundamental problems with the algorithm. SuperMemo have subsequently
stated that the description of the SM-5 algorithm listed on their
website is incomplete, so it is possible the problems we encountered do
not exist in SuperMemo’s proprietary implementation.
