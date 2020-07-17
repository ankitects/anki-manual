# Frequently Asked Questions

Please see https://faqs.ankiweb.net

## Can I do multiple-choice questions?


## Can I link cards together? Add dependencies? How should I handle synonyms?


## Can I give my notes an arbitrary number of fields?

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

## Can I host my own AnkiWeb?

Sorry, AnkiWeb is only available as a hosted service.

## Why is the Android version free when the iPhone version isn’t?

Working on Anki desktop, AnkiWeb and AnkiMobile is my full time job, and
I need some way of paying the bills. Since I make the desktop & web
versions available for free, I rely on sales of the iPhone app in order
to finance development.

AnkiDroid is written by a separate group of volunteers. Since they based
it on the free desktop version I make available (and rely on AnkiWeb in
order to synchronize decks), they decided to make it freely available as
well.

## What spaced repetition algorithm does Anki use?


