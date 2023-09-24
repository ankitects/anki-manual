# Searching

<!-- toc -->

Anki's Browse screen and the Filtered Deck feature use a common method
of searching for specific cards/notes.

## Simple searches

When you type some text into the search box, Anki finds matching notes
and displays their cards. Anki searches in all fields of the notes, but
does not search for tags (see later in this section for how to search
for tags). Some examples:

`dog`\
search for "dog" - will match words like "doggy" and "underdog" too.

`dog cat`\
finds notes that have both "dog" and "cat" on them, such as "raining
cats and dogs".

`dog or cat`\
finds notes with either "dog" or "cat".

`dog (cat or mouse)`\
finds notes with dog and cat, or dog and mouse.

`-cat`\
finds notes without the word "cat".

`-cat -mouse`\
finds notes with neither "cat" nor "mouse".

`-(cat or mouse)`\
same as the above.

`"a dog"`\
finds notes with the exact sequence of characters "a dog" on them, such
as "atta dog", but not "dog a" or "adog".

`-"a dog"`\
finds notes without the exact phrase "a dog"

`d_g`\
finds notes with d, &lt;a letter&gt;, g, like dog, dig, dug, and so on.

`d*g`\
finds notes with d, &lt;zero or more letters&gt;, g, like dg, dog, dung,
etc.

`w:dog`\
search for "dog" on a word boundary - will match "dog", but not "doggy"
or "underdog". Requires Anki 2.1.24+ or AnkiMobile 2.1.61+. Note that
formatting changes may be interpreted as word boundaries e.g. searching
for `w:exam` will match **exam**ple.

`w:dog*`\
will match "dog" and "doggy", but not "underdog".

`w:*dog`\
will match "dog" and "underdog", but not "doggy".

Things to note from the above:

- Search terms are separated by spaces.

- When multiple search terms are provided, Anki looks for notes that
  match all of the terms - an implicit 'and' is inserted between each
  term. On Anki 2.1.24+ and AnkiMobile 2.0.60+ you can be explicit
  if you like ("dog and cat" is the same as "dog cat"), but older
  Anki versions will treat "and" as just another word to search for.

- You can use "or" if you only need one of the terms to match.

- You can prepend a minus sign to a term to find notes that don’t
  match.

- You can group search terms by placing them in parentheses, as in the
  **dog (cat or mouse)** example. This becomes important when
  combining OR and AND searches — in the example, with the
  parentheses, it matches either 'dog cat' or 'dog mouse', whereas
  without them it would match either 'dog and cat' or 'mouse'.

- Anki is only able to search within formatting in the [sort field](editing.md#customizing-fields) you’ve configured. For example, if you add
  "**exa**mple" to one of your fields, this will not be matched when
  searching for "example" unless that field is the sort field. If a
  word is not formatted, or the formatting does not change in the
  middle of the word, then Anki will be able to find it in any field.

- Standard searches are case insensitive for Latin characters - a-z will
  match A-Z, and vice versa. Other characters such as Cyrillic are case sensitive
  in a standard search, but can be made case insensitive by searching on a word
  boundary or regular expression (`w:`, `re:`).

## Limiting to a field

You can also ask Anki to match only if a particular field contains some
text. Unlike the searches above, searching on fields requires an 'exact
match' by default.

`front:dog`\
find notes with a Front field of exactly "dog". A field that says "a
dog" will not match.

`"animal front:a dog"`\
find notes where the "Animal Front" field is exactly "a dog". The double quotes are
mandatory, see [below](#matching-special-characters).

`front:*dog*`\
find notes with Front field containing dog somewhere

`front:`\
find notes that have an empty Front field

`front:_*`\
find notes that have a non-empty Front field

`front:*`\
find notes that have a Front field, empty or not

`fr*:text`\
find notes in a field starting with "fr". Requires Anki 2.1.24+ or AnkiMobile 2.1.60+.

## Tags, decks, cards and notes

`tag:animal`\
find notes with the tag "animal", or subtags like "animal::mammal"

`tag:none`\
find notes with no tags

`tag:ani*`\
find notes with tags starting with ani

`deck:french`\
find cards in a French deck, or subdecks like French::Vocab

`deck:french -deck:french::*`\
find cards in French, but not subdecks

`deck:"french vocab"`\
searching when a deck has a space

`"deck:french vocab"`\
also ok

`deck:filtered`\
filtered decks only

`-deck:filtered`\
normal decks only

`card:forward`\
search for Forward cards

`card:1`\
search for cards by template number - eg, to find the second cloze
deletion for a note, you’d use `card:2`

`note:basic`\
search for cards with a Basic note type

## Ignoring accents/combining characters

Requires Anki 2.1.24+ or AnkiMobile 2.0.60+.

You can use `nc:` to remove combining characters ("no combining"). For example:

`nc:uber`\
matches notes with "uber", "über", "Über" and so on.

`nc:は`\
matches "は", "ば", and "ぱ"

Searches that ignore combining characters are slower than regular searches.

## Regular expressions

Anki 2.1.24+ and AnkiMobile 2.0.60+ support searching in notes with "regular expressions",
a standard and powerful way of searching in text.

Start a search with `re:` to search by regular expression. To make things easier, Anki will
treat the following as [raw input](#raw-input), so bear in mind the rules listed there.

Some examples:

`"re:(some|another).*thing"`\
find notes that have "some" or "another" on them, followed by 0 or more characters, and then "thing"

`re:\d{3}`\
find notes that have 3 digits in a row

Regular expressions can also be limited to a specific field. Please note that unlike the normal searches
in a specific field, regular expressions in fields don't require an exact match. Eg:

`front:re:[a-c]1`\
matches uppercase or lowercase a1, B1 or c1 that occurs anywhere in the "Front" field

`front:re:^[a-c]1$`\
like the above, but will not match if any other text falls before or after a1/b1/c1.

Anki 2.1.50 added regex support for tags:

`tag:re:^parent$`\
find notes with the exact tag "parent", disregarding any child tags like "parent::child"

`"tag:re:lesson-(1[7-9]|2[0-5])"`\
find notes with tags "lesson-17" through "lesson-25"

You can learn more about regular expressions here: <https://regexone.com/lesson/introduction_abcs>

Some things to be aware of:

- The search is case-insensitive by default; use `(?-i)` at the start to turn on case sensitivity.
- Some text like spaces and newlines may be represented differently in HTML - you can
  use the HTML editor in the editing screen to see the underlying HTML contents.
- For the specifics of Anki's regex support, please see the regex crate documentation: <https://docs.rs/regex/1.3.9/regex/#syntax>

## Card state

`is:due`\
review cards and learning cards waiting to be studied

`is:new`\
new cards

`is:learn`\
cards in learning

`is:review`\
reviews (both due and not due) and lapsed cards

`is:suspended`\
cards that have been manually suspended

`is:buried`\
cards that have been buried, either [automatically](studying.md#siblings-and-burying) or
manually

Note that with the [new scheduler](https://faqs.ankiweb.net/the-anki-2.1-scheduler.html),
Anki now distinguishes between manually and automatically buried cards so you can
unbury one set without the other.

Cards that have lapsed fall into several of these categories, so it may
be useful to combine them to get more precise results:

`is:learn is:review`\
cards that have lapsed and are awaiting relearning

`-is:learn is:review`\
review cards, not including lapsed cards

`is:learn -is:review`\
cards that are in learning for the first time

`flag:1`\
cards with a red flag

`flag:2`\
cards with an orange flag

`flag:3`\
cards with a green flag

`flag:4`\
cards with a blue flag

`flag:5`\
cards with a pink flag

`flag:6`\
cards with a turquoise flag

`flag:7`\
cards with a purple flag

## Card properties

`prop:ivl>=10`\
cards with interval of 10 days or more

`prop:due=1`\
cards due tomorrow

`prop:due=-1`\
cards due yesterday that haven’t been answered yet

`prop:due>-1 prop:due<1`\
cards due between yesterday and tomorrow

`prop:reps<10`\
cards that have been answered less than 10 times

`prop:lapses>3`\
cards that have moved into relearning more than 3 times

`prop:ease!=2.5`\
cards easier or harder than default

`prop:cdn:d>5` (Requires Anki 2.1.64+.)\
cards with the value of `d` in custom data (usually refers to Difficulty in FSRS) greater than 5

`prop:cds:v=reschedule` (Requires Anki 23.10+.)\
cards with the string `v` in custom data equal to `reschedule`

`prop:s>21` (Requires Anki 23.10+ and FSRS enabled.)\
cards with stability greater than 21 days

`prop:d>0.3` (Requires Anki 23.10+ and FSRS enabled.)\
cards with difficulty greater than 0.3

`prop:r<0.9` (Requires Anki 23.10+ and FSRS enabled.)\
cards with retention less than 0.9

## Recent Events

### Added

`added:1`\
cards added today

`added:7`\
cards added in last week

The check is made against card creation time rather than note creation
time, so cards that were generated within the time frame will be
included even if their notes were added a long time ago.

### Edited

`edited:n`\
cards where the note text was added/edited in the last n days.

This requires Anki 2.1.28+ / AnkiMobile 2.0.64+.

### Answered

`rated:1`\
cards answered today

`rated:1:2`\
cards answered Hard (2) today

`rated:7:1`\
cards answered Again (1) over the last 7 days

`rated:31:4`\
cards answered Easy (4) in the last month

Rating searches had been limited to 31 days before version 2.1.39.

### First Answered

On version 2.1.45+, you can also search for the very first review only:

`introduced:1`\
cards answered for the first time today

`introduced:365`\
cards answered for the first time within the last 365 days

## Matching special characters

This section was written for Anki 2.1.36+ - earlier versions did not support escaping
characters in certain situations.

As shown in the previous section, some characters like `*`, `_` and `"` have a
special meaning in Anki. If you need to locate those characters in a search,
you need to tell Anki not to treat them specially.

- _Space_\
  To match something including spaces, enclose the `"entire term"` in double
  quotes. If it is a colon search, you also have the option to only quote the
  `part:"after the colon"` (unless there are spaces before the colon as well).

- `"`, `*` and `_`\
  Add a backslash before these characters to treat them literally. For example,
  `_` will match any single character, but `\_` matches only an actual underscore.

- `\`\
  Because a backlash is used to remove the special meaning from other characters,
  it too is treated specially. If you need to search for an actual backslash,
  use `\\` instead of `\`.

- `(` and `)`\
  You can search for parentheses either by enclosing the full term in quotes,
  and/or by using a backslash. That is, `"some(text)"`, `some\(text\)` and
  `"some\(text\)"` are all equivalent, but `some(text)` is not.

- `-`\
  Starting a search term with `-` usually inverts it: `-dog` matches everything
  except dog for example. If you instead wish to include an actual hyphen,
  you can either use a backslash, or include the text in quotes, such as
  `\-.-` or `"-.-"`.

- `:`\
  Colons have to be escaped unless they are preceded by another, unescaped colon.
  So `w:e:b` is a word boundary search for `e:b`, `w\:e\:b` searches literally for
  `w:e:b` and `w\:e:b` searches the field `w:e` for `b` (see
  [field searches](#limiting-to-a-field)).

- `&`, `<`, and `>`\
  `&`, `<`, and `>` are treated as HTML when searching in Anki, and as such searches
  containing them don't work as expected. However, you can search for them by using their
  corresponding HTML entity names (`&amp;` for `&`, `&lt;` for `<`, and `&gt;` for `>`).
  For example, searching `&lt;&amp;text&gt;` searches for a card with `<&text>` in a field.

### Raw input

Text preceded by certain keywords (like `re:`) will be treated as raw input. That is,
the characters listed above largely lose their special meaning. In such a context, only
a minimum of escaping is required to prevent ambiguity:

- `"` must be escaped.

- Spaces and unescaped parentheses require the search term to be quoted.

- The search term must not end in an odd number of backslashes.

## Object IDs

`nid:123`\
the note with note id 123

`cid:123,456,789`\
all cards with card ids 123, 456 or 789

Note and card IDs can be found in the [card info](stats.md) dialog in the
browser. These searches may also be helpful when doing add-on
development or otherwise working closely with the database.
