# Getting Started

<!-- toc -->

## Installing & Upgrading

Please see the instructions for your computer:

- [Windows](./platform/windows/installing.md)
- [Mac](./platform/mac/installing.md)
- [Linux](./platform/linux/installing.md)

## Videos

For a quick way to dive into Anki, please have a look at these intro
videos. Some were made with a previous Anki version, but the concepts
are the same.

- [Shared Decks and Review Basics](http://www.youtube.com/watch?v=QS2G-k2hQyg&yt:cc=on)

- [Syncing](https://www.youtube.com/watch?v=YkiM4DPzSVc&list=PLGgmaKOIHykFoomqkBJAyGiDQ2kyiuTao&yt:cc=on)

- [Switching Card Order](http://www.youtube.com/watch?v=DnbKwHEQ1mA&yt:cc=on)

- [Styling Cards](http://www.youtube.com/watch?v=F1j1Zx0mXME&yt:cc=on)

- [Typing in the Answer](http://www.youtube.com/watch?v=5tYObQ3ocrw&yt:cc=on)

If YouTube is unavailable in your country, you can [download the videos](https://apps.ankiweb.net/downloads/archive/screencasts/2.0/)
instead.

## Key Concepts

### Cards

A question and answer pair is called a 'card'. This is based on a paper
flashcard with a question on one side and the answer on the back. In
Anki a card doesn’t actually look like a physical card, and when you
show the answer the question remains visible by default. For example, if
you’re studying basic chemistry, you might see a question like:

    Q: Chemical symbol for oxygen?

After thinking about it, and deciding the answer is O, you click the
show answer button, and Anki shows you:

    Q: Chemical symbol for oxygen?
    A: O

After confirming that you are correct, you can tell Anki how well you
remembered, and Anki will choose a next time to show you again.

#### Types of Cards

- **New:** A new card is one that you have downloaded or entered in, but have never studied before.

- **Learning:** Cards that were seen for the first time recently, and are still being learnt.

- **Review:** Cards that were previously learnt, and now need to be reviewed so you don’t forget them.
  There are two types of review cards:
    - **Young:** A young card is one that has an interval of less than 21 days, but is
   not in learning.
    - **Mature:** A mature card is one that has an interval of 21 days or greater.

- **Relearn:** A relearning card is a card that you have failed in review mode, thus
  returning it to learning mode to be relearned.

### Decks

A 'deck' is a group of cards. You can place cards in different decks to
study parts of your card collection instead of studying everything at
once. Each deck can have different settings, such as how many new cards
to show each day, or how long to wait until cards are shown again.

Decks can contain other decks, which allows you to organize decks into a
tree. Anki uses “::” to show different levels. A deck called
“Chinese::Hanzi” refers to a “Hanzi” deck, which is part of a “Chinese”
deck. If you select “Hanzi” then only the Hanzi cards will be shown; if
you select “Chinese” then all Chinese cards, including Hanzi cards, will
be shown.

To place decks into a tree, you can either name them with “::” between
each level, or drag and drop them from the deck list. Decks that have
been nested under another deck (that is, that have at least one “::” in
their names) are often called 'subdecks', and top-level decks are
sometimes called 'superdecks' or 'parent decks'.

Anki starts with a deck called “default”; any cards which have somehow
become separated from other decks will go here. Anki will hide the
default deck if it contains no cards and you have added other decks.
Alternatively, you may rename this deck and use it for other cards.

Decks are displayed in the deck list alphabetically. This can result in
a surprising order if your decks contain numbers - for example, "My Deck 10"
will come before "My Deck 9", as 1 comes before 9. If you wish to number your
decks, you can add a "0" in front of single-digit numbers, e.g. "Deck 01",
"Deck 02" .. "Deck 10".

Decks are best used to hold broad categories of cards, rather than
specific topics such as “food verbs” or “lesson 1”. For more info on
this, please see the [using decks appropriately](editing.md#using-decks-appropriately) section.

For information on how decks affect the order cards are displayed in,
please see the [display order](studying.md#display-order) section.

### Notes & Fields

When making flashcards, it’s often desirable to make more than one card
that relates to some information. For example, if you’re learning
French, and you learn that the word “bonjour” means “hello”, you may
wish to create one card that shows you “bonjour” and asks you to
remember “hello”, and another card that shows you “hello” and asks you
to remember “bonjour”. One card is testing your ability to recognize the
foreign word, and the other card is testing your ability to produce it.

When using paper flashcards, your only option in this case is to write
out the information twice, once for each card. Some computer flashcard
programs make life easier by providing a feature to flip the front and
back sides. This is an improvement over the paper situation, but there
are two major downsides:

- Because such programs don’t track your performance of recognition
  and production separately, cards will tend not to be shown to you at
  the optimum time, meaning you forget more than you’d like, or you
  study more than is necessary.

- Reversing the question and answer only works when you want exactly
  the same content on each side. This means it’s not possible to
  display extra info on the back of each card for example.

Anki solves these problems by allowing you to split the content of your
cards up into separate pieces of information. You can then tell Anki
which pieces of information you want on each card, and Anki will take
care of creating the cards for you and updating them if you make any
edits in the future.

Imagine we want to study French vocabulary, and we want to include the
page number on the back of each card. We want our cards to look like
this:

    Q: Bonjour
    A: Hello
       Page #12

And:

    Q: Hello
    A: Bonjour
       Page #12

In this example, we have three pieces of related information: a French
word, an English meaning, and a page number. If we put them together,
they’d look like this:

    French: Bonjour
    English: Hello
    Page: 12

In Anki, this related information is called a 'note', and each piece of
information is called a 'field'. So we can say that this type of note
has three fields: French, English, and Page.

To add and edit fields, click the “Fields…​” button while adding or
editing notes. For more information on fields, please see the
[Customizing Fields](editing.md#customizing-fields) section.

### Card Types

In order for Anki to create cards based on our notes, we need to give it
a blueprint that says which fields should be displayed on the front or
back of each card. This blueprint is called a 'card type'. Each type of
note can have one or more card types; when you add a note, Anki will
create one card for each card type.

Each card type has two 'templates', one for the question and one for the
answer. In the above French example, we wanted the recognition card to
look like this:

    Q: Bonjour
    A: Hello
       Page #12

To do this, we can set the question and answer templates to:

    Q: {{French}}
    A: {{English}}<br>
       Page #{{Page}}

By surrounding a field name in double curly brackets, we tell Anki to
replace that section with the actual information in the field. Anything
not surrounded by curly brackets remains the same on each card. (For
instance, we don’t have to type “Page \#” into the Page field when
adding material – it’s added automatically to every card.) &lt;br&gt; is
a special code that tells Anki to move to the next line; more details
are available in the [templates](templates/intro.md) section.

The production card templates work in a similar way:

    Q: {{English}}
    A: {{French}}<br>
       Page #{{Page}}

Once a card type has been created, every time you add a new note, a card
will be created based on that card type. Card types make it easy to keep
the formatting of your cards consistent and can greatly reduce the
amount of effort involved in adding information. They also mean Anki can
ensure related cards don’t appear too close to each other, and they
allow you to fix a typing mistake or factual error once and have all the
related cards updated at once.

To add and edit card types, click the “Cards…​” button while adding or
editing notes. For more information on card types, please see the [Cards and Templates](templates/intro.md) section.

### Note Types

Anki allows you to create different types of notes for different
material. Each type of note has its own set of fields and card types.
It’s a good idea to create a separate note type for each broad topic
you’re studying. In the above French example, we might create a note
type called “French” for that. If we wanted to learn capital cities, we
could create a separate note type for that as well, with fields such as
“Country” and “Capital City”.

When Anki checks for duplicates, it only compares other notes of the
same type. Thus if you add a capital city called “Orange” using the
capital city note type, you won’t see a duplicate message when it comes
time to learn how to say “orange” in French.

When you create a new collection, Anki automatically adds some standard
note types to it. These note types are provided to make Anki easier for
new users, but in the long run it’s recommended you define your own note
types for the content you are learning. The standard note types are as
follows:

- **Basic**\
  Has Front and Back fields, and will create one card. Text you enter in
  Front will appear on the front of the card, and text you enter in Back
  will appear on the back of the card.

- **Basic (and reversed card)**\
  Like Basic, but creates two cards for the text you enter: one from
  front→back and one from back→front.

- **Basic (optional reversed card)**\
  This is a front→back card, and optionally a back→front card. To do this,
  it has a third field called “Add Reverse.” If you enter any text into
  that field, a reverse card will be created. More information about this
  is available in the [Cards and Templates](templates/intro.md) section.

- **Basic (type in the answer)**\
  This is essentially Basic, with an extra text box on the front where you
  can type your answer in, after flipping to the back your input would be
  checked and compared with the answer. More information is available in the
  [Checking Your Answer](templates/fields.md#checking-your-answer) section.

- **Cloze**\
  A note type which makes it easy to select text and turn it into a cloze
  deletion (e.g., “Man landed on the moon in \[…​\]” → “Man landed on the
  moon in 1969”). More information is available in the [cloze deletion](editing.md#cloze-deletion) section.

- **Image Occlusion**\
  Like the cloze notetype, but it works with images instead of text,
  which is especially useful when studying material that heavily relies on images,
  such as anatomy, geography, and more. For details, please see the [Image Occlusion](editing.md#image-occlusion)
  section of the manual. 

To add your own note types and modify existing ones, you can use Tools →
Manage Note Types from the main Anki window.

Notes and note types are common to your whole collection rather than
limited to an individual deck. This means you can use many different
types of notes in a particular deck, or have different cards generated
from a particular note in different decks. When you add notes using the
Add window, you can select what note type to use and what deck to use,
and these choices are completely independent of each other. You can also
change the note type of some notes [after you’ve already created them](browsing.md).

### Collection

Your 'collection' is all the material stored in Anki – your cards,
notes, decks, note types, deck options, and so on.

## Shared Decks

You can watch [a video about Shared Decks and Review
Basics](http://www.youtube.com/watch?v=QS2G-k2hQyg&yt:cc=on) on YouTube.

The easiest way to get started with Anki is to download a deck of cards
someone has shared:

1. Click the “Get Shared” button at the bottom of the deck list.

2. When you’ve found a deck you’re interested in, click the “Download”
   button to download a deck package.

3. Double-click on the downloaded package to load it into Anki, or
   File→Import it.

Please note that it’s not currently possible to add shared decks
directly to your AnkiWeb account. You need to import them with the
desktop program, then synchronize to upload them to AnkiWeb.

Creating your own deck is the most effective way to learn a complex
subject. Subjects like languages and the sciences can’t be understood
simply by memorizing facts — they require explanation and context to
learn effectively. Furthermore, inputting the information yourself
forces you to decide what the key points are, leading to a better
understanding.

If you are a language learner, you may be tempted to download a long
list of words and their translations, but this won’t teach you a
language any more than memorizing scientific equations will teach you
astrophysics. To learn properly, you need textbooks, teachers, or
exposure to real-world sentences.

    Do not learn if you do not understand.
    --SuperMemo

Most shared decks are created by people who are learning material
outside of Anki – from textbooks, classes, TV, etc. They select the
interesting points from what they learn and put them into Anki. They
make no effort to add background information or explanations to the
cards, because they already understand the material. So when someone
else downloads their deck and tries to use it, they’ll find it very
difficult as the background information and explanations are missing.

That is not to say shared decks are useless – simply that for complex
subjects, they should be used as a 'supplement' to external material,
not as a 'replacement' for it. If you’re studying textbook ABC and
someone has shared a deck of ideas from ABC, that’s a great way to save
some time. And for simple subjects that are basically a list of facts,
such as capital city names or pub quiz trivia, you probably don’t need
external material. But if you attempt to study complex subjects without
external material, you will probably meet with disappointing results.
