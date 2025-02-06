# Background

<!-- toc -->

## What is Anki?
Anki is a program which makes remembering things easy. Because it is a
lot more efficient than traditional study methods, you can either
greatly decrease your time spent studying, or greatly increase the
amount you learn.


## Who can benefit from using Anki?
Anyone who needs to remember things in their daily life can benefit from
Anki. Since it is content-agnostic and supports images, audio, videos
and scientific markup, the possibilities are endless. For
example:

- Learning a language

- Studying for medical and law exams

- Memorizing names and faces of people

- Brushing up on geography

- Mastering long poems

- Even practising guitar chords!


## What concepts does Anki build upon?
There are two simple concepts behind Anki: **active recall testing** and
**spaced repetition**. They are not known to most learners, despite being
well-documented in scientific literature. Understanding how these concepts
work will make you a more effective learner.


## Active Recall Testing
### What is Active Recall?
Active Recall means trying to actively remember the answer to a question,
instead of just passively reading, watching or listening to the information
(that would be _passive study_).

### Why Active Recall?
Research has shown that active recall testing is far
more effective at building strong memories than passive study. There are
two reasons for this:

- The act of recalling something _strengthens_ the memory, increasing
  the chances we’ll be able to remember it again.

- When we're unable to answer a question, it tells us we need to
  return to the material to review or relearn it.

### Active Recall outside of Anki
You have probably encountered active recall testing in your school years
without even realizing it. When good teachers give you a series of
questions to answer after reading an article, or make you take weekly
tests, they are not doing it simply to see if you
understood the material or not. By testing you, they are increasing the
chances you will be able to remember the material in the future.

### How to use Active Recall in your studies?
A good way to integrate active recall testing into your own studies is
to use _flashcards_. In its basic form these flashcards consist of a question
on the front and an answer on the back. You would read the question on the
front, try to remember it and then check if you were right by reading the
answer on the back.


## How does the brain decide what it remembers or forgets?
The brain remembers things that it needs for survival, things that are
emotionally charged and things that are repeated often enough. Information that
do not seem useful, however, will be rapidly forgotten.

Example:
> Chances are that you don't remember what you had for dinner on Monday two weeks
ago, because this information is not usually useful. However, if you went to a
fantastic restaurant that day and have spent the last two weeks telling people
about how great it was, you're likely to still remember it in vivid detail.

### When do you forget?
If you don't need the information for survival and the information isn't
emotionally charged, then the brain applies a "use it or lose it" policy – which
means you'll forget the information, if you do not use it.

Example:
> You spend an afternoon memorizing some science terms and then don't think
about that material for two weeks. If you try to remember it after this period 
of time, you'll probably have forgotten most of it.

### How fast do we forget and how to prevent forgetting?
Studies show we forget about 75% of material learnt within a 48 hour period.
This can seem pretty depressing when you need to learn a lot of information!

However, the solution is simple: _review_. By reviewing newly-learnt
information, we can greatly reduce forgetting.

The only problem is that traditionally, reviewing has not been very practical.
If you are using paper flashcards, it's easy to flick through all of them
if you only have 30 of them to review, but as the number grows to 300 or
3000, it quickly becomes unmanageable.

## Spaced Repetition

### What is spaced repetition?
_Spaced repetition_ means you review information in intervals over a period of
time. It is based on the _spacing effect_, which was reported in 1885 by a
German psychologist called Hermann Ebbinghaus. He observed that we tend to
remember things more effectively, if we spread reviews out over time, instead of
studying multiple times in one session.

### The Leitner System
In 1972, a German scientist called Sebastian Leitner popularized a method of
spaced repetition with paper flashcards. His method works by separating the
paper cards into a series of boxes, and moving the cards to a different box on
each successful or unsuccessful review. That made it possible to see at a glance
a rough estimate of how well a card was known and when it should be reviewed
again.

#### Limitations of the Leitner System
This system was a great improvement over a single box of cards, and it has been
widely adopted by computerized flashcard software. It is a rather rough approach
however, as it cannot give you an exact date on which you should review
something again, and it does not work very well with material of varying
difficulty.

### Impactful recent developments
The biggest developments in the last 30 years have come from the authors
of SuperMemo, a commercial flashcard program that implements spaced
repetition. SuperMemo pioneered the concept of a system that keeps track
of the ideal time to review material and optimizes itself based on the
performance of the user.

#### How does SuperMemo work?
In SuperMemo's spaced repetition system, every time you answer a
question, you tell the program how well you were able to remember it —
whether you forgot completely, made a small mistake, remembered with
trouble, remembered easily, etc. The program uses this feedback to
decide the optimal time to show you the question again. Because a memory
gets stronger each time you successfully recall it, the time between
reviews gets longer and longer — so you may see a question for the first
time today, then 3 days later, 15 days later, 45 days later, and so on.

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
SuperMemo algorithm called [SM-2](https://faqs.ankiweb.net/what-spaced-repetition-algorithm).
Recently, a new algorithm called [FSRS](https://docs.ankiweb.net/deck-options.html?highlight=FSRS#fsrs)
has been integrated as an alternative to the legacy SM-2 algorithm.
