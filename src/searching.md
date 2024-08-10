# Searching

<!-- toc -->

Anki's Browse screen and the Filtered Deck feature use a common method
of searching for specific cards/notes. This method can also be used to adjust the scope of FSRS optimization. 

## Simple searches

When you type some text into the search box, Anki finds matching notes
and displays their cards. Anki searches in all fields of the notes, but
does not search for tags (see [later in this section](#tags-decks-cards-and-notes) to search for tags). Some examples:

`dog`\
searches for "dog" - will match words like "doggy" and "underdog" too.

`dog cat`\
finds notes that have both "dog" and "cat" on them, such as "raining
cats and dogs".

`dog or cat`\
finds notes with either "dog" or "cat".

`dog (cat or mouse)`\
finds notes with "dog" and "cat", or "dog" and "mouse".

`-cat`\
finds notes without "cat".

`-cat -mouse`\
finds notes with neither "cat" nor "mouse".

`-(cat or mouse)`\
same as the above.

`"a dog"`\
finds notes with the exact sequence of characters "a dog" in them, such
as "atta dog", but not "dog a" or "adog".

`-"a dog"`\
finds notes without the exact sequence of characters "a dog" in them.

`d_g`\
finds notes with d, &lt;one character&gt;, g, like dog, dig, dug, and so on.

`d*g`\
finds notes with d, &lt;zero or more characters&gt;, g, like dg, dog, dung,
etc.

`w:dog`\
searches for the word "dog" as opposed to a sequence of characters - will match "dog", but not "doggy"
or "underdog". Requires Anki 2.1.24+, AnkiMobile 2.1.61+, or AnkiDroid 2.17+. Note that
formatting changes may be interpreted as word boundaries, e.g. searching
for `w:exam` will match **exam**ple, as the "exam" part of example is in bold format.

`w:dog*`\
will match "dog" and "doggy", but not "underdog".

`w:*dog`\
will match "dog" and "underdog", but not "doggy".

Things to note from the above:

- Search terms are separated by spaces.

- When multiple search terms are provided, Anki looks for notes that
  match all of the terms - an implicit "and" is inserted between each
  term. On Anki 2.1.24+, AnkiMobile 2.0.60+, and AnkiDroid 2.17+ you can be explicit
  if you like ("dog and cat" is the same as "dog cat"), but older
  Anki versions will treat "and" as just another word to search for.

- You can use "or" if you only need one of the terms to match.

- You can prepend a minus sign to a term to find notes that don’t
  match the term.

- You can group search terms by placing them in parentheses, as in the
  "dog (cat or mouse)" example. This becomes important when
  combining OR and AND searches — in the example, with the
  parentheses, it matches either "dog cat" or "dog mouse", whereas
  without them it would match either "dog and cat" or "mouse".

- Anki is only able to search within formatting in the [sort field](editing.md#customizing-fields) you’ve configured. For example, if you add
  "**exa**mple" to one of your fields, with the "exa" part in bold, this will not be matched when
  searching for "example" unless that field is the sort field. If a
  word is not formatted, or the formatting does not change in the
  middle of the word, then Anki will be able to find it in any field.

- Standard searches are case insensitive for Latin characters - a-z will
  match A-Z, and vice versa. Other characters such as Cyrillic are case sensitive
  in a standard search, but can be made case insensitive by searching on a word
  boundary or regular expression (`w:`, `re:`).

## Limiting to a field

You can also ask Anki to match only if a particular field contains some
text. Unlike the previous search examples, searching in fields requires an exact
match by default.

`front:dog`\
finds notes with a Front field of exactly "dog". A field that says "a
dog" will not match.

`"animal front:a dog"`\
finds notes where the "Animal Front" field is exactly "a dog". The double quotes are
mandatory: see [later in this section](#matching-special-characters).

`front:*dog*`\
finds notes where the Front field contains dog somewhere.

`front:`\
finds notes that have an empty Front field.

`front:_*`\
findd notes that have a non-empty Front field.

`front:*`\
finds notes that have a Front field, empty or not.

`fr*:text`\
finds notes in a field starting with "fr". Requires Anki 2.1.24+, AnkiMobile 2.1.60+, or AnkiDroid 2.17+.

## Tags, decks, cards and notes

`tag:animal`\
finds notes with the tag "animal", or subtags like "animal::mammal".

`tag:none`\
finds notes with no tags.

`tag:ani*`\
finds notes with tags starting with "ani".

`deck:french`\
find cards in a deck called "French", or its subdecks like "French::Vocab".

`deck:french -deck:french::*`\
finds cards in "French", but not its subdecks.

`deck:"french vocab"`\
searching when the deck name has a space.

`"deck:french vocab"`\
same as earlier.

`deck:filtered`\
filtered decks only.

`-deck:filtered`\
normal decks only.

`preset:"Default"`\
cards in all decks that use the "Default" deck options preset.
Requires Anki 23.10+, AnkiMobile 23.10+ or AnkiDroid 2.17+.

`card:forward`\
finds cards created by a card type named "Forward".

`card:1`\
searches for cards by card type number, e.g. to find the second cloze
deletion for a note, you’d use `card:2`

`note:basic`\
searches for cards created with a note type named "Basic".

## Ignoring accents/combining characters

Requires Anki 2.1.24+, AnkiMobile 2.0.60+ or AnkiDroid 2.17+.

You can use `nc:` (nc stands for "no combining") to make Anki ignore combining characters. For example:

`nc:uber`\
matches notes with "uber", "über", "Über" and so on.

`nc:は`\
matches "は", "ば", and "ぱ".

Searches that ignore combining characters are slower than regular searches.

## Regular expressions

Anki 2.1.24+, AnkiMobile 2.0.60+ and AnkiDroid 2.17+ support searching in notes with "regular expressions",
a standard and powerful way of searching in text.

Start a search with `re:` to search using regular expressions. To make things easier, Anki will
treat the following as [raw input](#raw-input), so bear in mind the rules listed there.

Some examples:

`"re:(some|another).*thing"`\
finds notes that have "some" or "another" on them, followed by 0 or more characters, and then "thing".

`re:\d{3}`\
finds notes that have 3 digits in a row.

Regular expressions can also be limited to a specific field. Please note that unlike the normal searches
in a specific field, regular expressions in fields don't require an exact match:

`front:re:[a-c]1`\
matches uppercase or lowercase a1, B1 or c1 that occurs anywhere in the "Front" field.

`front:re:^[a-c]1$`\
same as the previous example, but will not match if any other text falls before or after a1/b1/c1.

Anki 2.1.50+ supports regular expressions for tags:

`tag:re:^parent$`\
finds notes with the exact tag "parent", disregarding any child tags like "parent::child".

`"tag:re:lesson-(1[7-9]|2[0-5])"`\
finds notes with tags "lesson-17" through "lesson-25".

For more information on regular expressions, see [this website](<https://regexone.com/lesson/introduction_abcs>).

Some things to be aware of:

- The search is case-insensitive by default; use `(?-i)` at the start to turn on case sensitivity.
- Some text like spaces and newlines may be represented differently in HTML - you can
  use the HTML editor in the editing screen to see the underlying HTML contents.
- For the specifics of Anki's regex support, see the [regex crate documentation](<https://docs.rs/regex/1.3.9/regex/#syntax>)

## Card state

`is:due`\
review cards and learning cards waiting to be studied.

`is:new`\
new cards.

`is:learn`\
cards in learning.

`is:review`\
reviews (both due and not due) and lapsed cards.

`is:suspended`\
cards that have been [automatically](leeches.md) or manually suspended.

`is:buried`\
cards that have been buried, either [automatically](studying.md#siblings-and-burying) or
manually.

Cards that have [lapsed](deck-options.md#lapses) fall into several of the previous categories, so it may
be useful to combine different search terms to get more precise results:

`is:learn is:review`\
cards that have lapsed and are awaiting relearning.

`-is:learn is:review`\
review cards, not including lapsed cards.

`is:learn -is:review`\
cards that are in learning for the first time.

## Flags

`flag:1`\
cards with a red flag.

`flag:2`\
cards with an orange flag.

`flag:3`\
cards with a green flag.

`flag:4`\
cards with a blue flag.

`flag:5`\
cards with a pink flag.

`flag:6`\
cards with a turquoise flag.

`flag:7`\
cards with a purple flag.

## Card properties

`prop:ivl>=10`\
cards with interval of 10 days or more.

`prop:due=1`\
cards due tomorrow.

`prop:due=-1`\
cards due yesterday that haven’t been answered yet.

`prop:due>=1`\
all cards due in the future, including tomorrow.

`prop:due<=-1`\
all  overdue cards

`prop:due>-1 prop:due<1`\
cards due yesterday, today and tomorrow.

`prop:reps<10`\
cards that have been answered less than 10 times.

`prop:lapses>3`\
cards that been lapsed more than 3 times.

`prop:ease!=2.5`\
cards easier or harder than default ease.

`prop:cdn:d>5`\
cards with the value of `d` in custom data (usually refers to difficulty in FSRS) greater than 5 (requires Anki 2.1.64+).

`prop:cds:v=reschedule`\
cards with the string `v` in custom data equal to `reschedule` (requires Anki 23.10+).

The following searches require Anki 23.10+ and FSRS enabled:

`prop:s>21`\
cards with stability greater than 21 days.

`prop:d>0.3`\
cards with difficulty greater than 0.3.

`prop:r<0.9`\
cards with retrievability less than 0.9.

## Recent Events

### Added

`added:1`\
cards added today.

`added:7`\
cards added in the last 7 days.

The check is made against card creation time rather than note creation
time, so cards that were generated within the time frame will be
included even if their notes were added a long time ago.

### Edited

`edited:n`\
cards where the note text was added/edited in the last n days.

This requires Anki 2.1.28+ or AnkiMobile 2.0.64+.

### Answered

`rated:1`\
cards answered today.

`rated:1:2`\
cards answered Hard (2) today.

`rated:7:1`\
cards answered Again (1) in the last 7 days.

`rated:31:4`\
cards answered Easy (4) in the last 31 days.

Anki 2.1.39+ supports rating searches over 31 days.

### First Answered

Requires Anki 2.1.45+.

`introduced:1`\
cards answered for the first time today.

`introduced:365`\
cards answered for the first time within the last 365 days.

## Matching special characters

If you're using a version earlier than Anki 2.1.36 the following searches may not work.

As shown in the previous section, some characters like `*`, `_` and `"` have a
special meaning in search. If you need to locate those characters in a search,
you need to tell Anki not to treat them specially. This is called "escaping a character" and is primarily done by using double quotes and backslashes.

- _Space_\
  To match something that includes spaces, enclose the `"entire term"` in double
  quotes. If it is a colon search, you also have the option to only quote the
  `part:"after the colon"`.

- `And`/`Or`\
  To search for the words `or` and `and`, wrap them with double quotes. For example, `dog "and" cat` searches for "dog", "cat" and the word "and".
  If you wrap the entire search term with quotes like in the previous example, you do not need to escape `and` or `or`.

- `"`, `*` and `_`\
  Add a backslash before these characters to treat them literally. For example,
  `_` will match any single character, but `\_` matches only an actual underscore.

- `\`\
  Because a backlash is used to remove the special meaning from other characters,
  it too is treated specially. If you need to search for an actual backslash,
  use `\\` instead of `\`.

- `(` and `)`\
  You can search for parentheses by enclosing the entire term in quotes,
   by using a backslash, or both at the same time. For example, `"(text)"`, `\(text\)` and
  `"\(text\)"` are all equivalent searches, and search for `(text)`.

- `-`\
  Starting a search term with `-` usually inverts it: `-dog` matches everything
  except dog for example. If you instead wish to include an actual hyphen,
  you can either use a backslash, or include the text in quotes. For example,
  `\-free` or `"-free"` will match "guilt-free" and "cruelty-free".

- `:`\
  Colons have to be escaped using backslashes unless they are preceded by another, unescaped colon.
  For example, `w:3:30` searches for "3:30" on word boundary and doesn't require you to use a backslash.
  However, if you don't use a colon search, the colons need to escaped like this: `3\:30`.

- `&`, `<`, and `>`\
  `&`, `<`, and `>` are treated as HTML when searching in Anki, and as such, searches
  containing them don't work as expected. However, you can search for them by using their
  corresponding HTML entity names (`&amp;` for `&`, `&lt;` for `<`, and `&gt;` for `>`).
  For example, searching `&amp;text` searches for a note with `&text` in a field.

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
