# Searching

Anki's Browse screen and the Filtered Deck feature use a common method
of searching for specific cards/notes.

## Simple searches

When you type some text into the search box, Anki finds matching notes
and displays their cards. Anki searches in all fields of the notes, but
does not search for tags (see later in this section for how to search
for tags). Some examples:

`dog`  
search for "dog" - will match words like "doggy" and "underdog" too

`dog cat`  
finds notes with both "dog" and "cat", such as "a dog and cat"

`dog or cat`  
finds notes with either "dog" or "cat"

`dog (cat or mouse)`  
finds notes with dog and cat, or dog and mouse

`-cat`  
finds notes without the word "cat".

`-cat -mouse`  
finds notes with neither "cat" nor "mouse".

`-(cat or mouse)`  
same as the above.

`"a dog"`  
finds notes with the exact sequence of characters "a dog" on them, such
as "atta dog", but not "dog a" or "adog".

`-"a dog"`  
finds notes without the exact phrase "a dog"

`d_g`  
finds notes with d, &lt;a letter&gt;, g, like dog, dig, dug, and so on.

`d*g`  
finds notes with d, &lt;zero or more letters&gt;, g, like dg, dog, dung,
etc.

Things to note from the above:

-   Search terms are separated by spaces.

-   When multiple search terms are provided, Anki looks for notes that
    match all of the terms.

-   You can use "or" if you only need one of the terms to match.

-   You can prepend a minus sign to a term to find notes that don’t
    match.

-   If you want to search for something including a space or
    parenthesis, enclose it in quotes.

-   You can group search terms by placing them in parentheses, as in the
    **dog (cat or mouse)** example. This becomes important when
    combining OR and AND searches — in the example, with the
    parentheses, it matches either 'dog cat' or 'dog mouse', whereas
    without them it would match either 'dog and cat' or 'mouse'.

-   Anki is only able to search within formatting in the [sort
    field](#fields) you’ve configured. For example, if you add
    "**exa**mple" to one of your fields, this will not be matched when
    searching for "example" unless that field is the sort field. If a
    word is not formatted, or the formatting does not change in the
    middle of the word, then Anki will be able to find it in any field.

## Limiting to a field

You can also ask Anki to match only if a particular field contains some
text. Unlike the searches above, searching on fields requires an 'exact
match' by default.

`front:dog`  
find notes with a Front field of exactly "dog". A field that says "a
dog" will not match.

`front:*dog*`  
find notes with Front field containing dog somewhere

`front:`  
find notes that have an empty Front field

`front:_*`  
find notes that have a non-empty Front field

`front:*`  
find notes that have a Front field, empty or not

## Tags, decks, cards and notes

`tag:animal`  
find notes with the tag "animal"

`tag:none`  
find notes with no tags

`tag:ani*`  
find notes with tags starting with ani

`deck:french`  
find cards in a French deck, or subdecks like French::Vocab

`deck:french -deck:french::*`  
find cards in French, but not subdecks

`deck:"french vocab"`  
searching when a deck has a space

`"deck:french vocab"`  
also ok

`deck:filtered`  
filtered decks only

`-deck:filtered`  
normal decks only

`card:forward`  
search for Forward cards

`card:1`  
search for cards by template number - eg, to find the second cloze
deletion for a note, you’d use card:2

`note:basic`  
search for cards with a Basic note type

## Card state

`is:due`  
review cards and learning cards waiting to be studied

`is:new`  
new cards

`is:learn`  
cards in learning

`is:review`  
reviews (both due and not due) and lapsed cards

`is:suspended`  
cards that have been manually suspended

`is:buried`  
cards that have been buried, either [automatically](#siblings) or
manually

Cards that have lapsed fall into several of these categories, so it may
be useful to combine them to get more precise results:

`is:learn is:review`  
cards that have lapsed and are awaiting relearning

`-is:learn is:review`  
review cards, not including lapsed cards

`is:learn -is:review`  
cards that are in learning for the first time

## Card properties

`prop:ivl>=10`  
cards with interval of 10 days or more

`prop:due=1`  
cards due tomorrow

`prop:due=-1`  
cards due yesterday that haven’t been answered yet

`prop:due>-1 prop:due<1`  
cards due between yesterday and tomorrow

`prop:reps<10`  
cards that have been answered less than 10 times

`prop:lapses>3`  
cards that have moved into relearning more than 3 times

`prop:ease!=2.5`  
cards easier or harder than default

Note that due only matches review cards and learning cards with an
interval of a day or more: cards in learning with small intervals like
10 minutes are not included.

## Recently added

`added:1`  
cards added today

`added:7`  
cards added in last week

The check is made against card creation time rather than note creation
time, so cards that were generated within the time frame will be
included even if their notes were added a long time ago.

## Recently answered

`rated:1`  
cards answered today

`rated:1:2`  
cards answered Hard (2) today

`rated:7:1`  
cards answered Again (1) over the last 7 days

`rated:31:4`  
cards answered Easy (4) in the last month

For speed, rating searches are limited to 31 days.

## Object IDs

`nid:123`  
all cards of the note with note id 123

`cid:123`  
the card with card id 123

`mid:123`  
find note types with note type id 123

Note and card IDs can be found in the [card info](#stats) dialog in the
browser. Note type IDs can be found by clicking on a note type in the
Browse screen. These searches may also be helpful when doing add-on
development or otherwise working closely with the database.

Object IDs will not work in the mobile clients, and are not intended to
be used in filtered decks at the moment.
