# Background

<!-- toc -->

Anki is a program which makes remembering things easy. Because it is a
lot more efficient than traditional study methods, you can either
greatly decrease your time spent studying, or greatly increase the
amount you learn.

Anyone who needs to remember things in their daily life can benefit from
Anki. Since it is content-agnostic and supports images, audio, videos
and scientific markup (via LaTeX), the possibilities are endless. For
example:

- learning a language

- studying for medical and law exams

- memorizing people’s names and faces

- brushing up on geography

- mastering long poems

- even practising guitar chords!

There are two simple concepts behind Anki: **active recall testing** and
**spaced repetition**. They are not known to most learners, despite having
been written about in the scientific literature for many years.
Understanding how they work will make you a more effective learner.

## Active Recall Testing

_Active recall testing_ means being asked a question and trying to
remember the answer. This is in contrast to _passive study_, where we
read, watch, or listen to something without pausing to consider if we
know the answer. Research has shown that active recall testing is far
more effective at building strong memories than passive study. There are
two reasons for this:

- The act of recalling something _strengthens_ the memory, increasing
  the chances we’ll be able to remember it again.

- When we're unable to answer a question, it tells us we need to
  return to the material to review or relearn it.

You have probably encountered active recall testing in your school years
without even realizing it. When good teachers give you a series of
questions to answer after reading an article, or make you take weekly
progress-check tests, they are not doing it simply to see if you
understood the material or not. By testing you, they are increasing the
chances you will be able to remember the material in the future.

A good way to integrate active recall testing into your own studies is
to use _flashcards_. With traditional paper flashcards, you write a
question on one side of a card, and the answer on the other side. By not
turning the card over until you've thought about the answer, you can
learn things more effectively than passive observation allows.

## Use It or Lose It

Our brains are efficient machines, and they rapidly discard information
that doesn't seem useful. Chances are that you don't remember what you
had for dinner on Monday two weeks ago, because this information is not
usually useful. If you went to a fantastic restaurant that day and spent
the last two weeks telling people about how great it was, however,
you're likely to still remember in vivid detail.

The brain's "use it or lose it" policy applies to everything we learn.
If you spend an afternoon memorizing some science terms, and then don't
think about that material for two weeks, you'll probably have forgotten
most of it. In fact, studies show we forget about 75% of material learnt
within a 48 hour period. This can seem pretty depressing when you need
to learn a lot of information!

The solution is simple, however: _review_. By reviewing newly-learnt
information, we can greatly reduce forgetting.

The only problem is that traditionally, reviewing has not been very practical. If
you are using paper flashcards, it's easy to flick through all of them
if you only have 30 of them to review, but as the number grows to 300 or
3000, it quickly becomes unwieldy.

## Spaced Repetition

The _spacing effect_ was reported by a German psychologist Hermann Ebbinghaus in 1885. He
observed that we tend to remember things more effectively, if we spread
reviews out over time, instead of studying multiple times in one
session. Since the 1930s, there have been a number of proposals for
utilizing the spacing effect to improve learning, in what has come to be
called _spaced repetition_.

One example was in 1972, when a German scientist called Sebastian Leitner
popularized a method of spaced repetition with paper flashcards. By
separating the paper cards into a series of boxes, and moving the
cards to a different box on each successful or unsuccessful review, it
was possible to see at a glance a rough estimate of how well a card was
known and when it should be reviewed again. This was a great improvement
over a single box of cards, and it has been widely adopted by
computerized flashcard software. It is a rather rough approach however,
as it cannot give you an exact date on which you should review something
again, and it does not cope very well with material of varying
difficulty.

The biggest developments in the last 30 years have come from the authors
of SuperMemo, a commercial flashcard program that implements spaced
repetition. SuperMemo pioneered the concept of a system that keeps track
of the ideal time to review material and optimizes itself based on the
performance of the user.

In SuperMemo's spaced repetition system, every time you answer a
question, you tell the program how well you were able to remember it —
whether you forgot completely, made a small mistake, remembered with
trouble, remembered easily, etc. The program uses this feedback to
decide the optimal time to show you the question again. Since a memory
gets stronger each time you successfully recall it, the time between
reviews gets bigger and bigger — so you may see a question for the first
time, then 3 days later, 15 days later, 45 days later, and so on.

This was a revolution in learning, as it meant material could be learnt
and retained with the absolute minimum amount of effort necessary.
SuperMemo's slogan sums it up: with spaced repetition, you can: "forget
about forgetting".

## Why Anki?

While there is no denying the huge impact SuperMemo has had on the
field, it is not without its problems. The program is often criticized
for being buggy and difficult to navigate. It only runs on Windows
computers. It is proprietary software, meaning that end-users cannot extend it
or access the raw data. And while very old versions have been made available
for free, they are quite limited for modern use.

Anki addresses these issues. There are free clients for Anki available
on many platforms, so struggling students and teachers with budgetary
constraints are not left out. Anki is open source, with an already
flourishing library of add-ons contributed by end-users. It is
multi-platform, running on Windows, macOS, Linux/FreeBSD, and some
mobile devices. And it is considerably easier to use than SuperMemo.

Anki's spaced repetition system is based on an older version of the
SuperMemo algorithm called [SM-2](https://faqs.ankiweb.net/what-spaced-repetition-algorithm). Recently, a new algorithm called [FSRS](https://docs.ankiweb.net/deck-options.html?highlight=FSRS#fsrs) has been integrated as an alternative to the legacy SM-2 algorithm.
