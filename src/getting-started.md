# Getting Started

<!-- toc -->

## Installing & Upgrading

The Anki ecosystem is made up of Anki, AnkiMobile, AnkiDroid, and AnkiWeb, all
of which are linked from our [official website](https://apps.ankiweb.net).

For instructions on how to install and upgrade Anki for your computer, please
read the links below:

- [Windows](./platform/windows/installing.md)
- [Mac](./platform/mac/installing.md)
- [Linux](./platform/linux/installing.md)

## Videos

For a quick way to dive into Anki, have a look at these intro
videos. Some were made with a previous Anki version, but the concepts
are the same.

- [Shared Decks and Review Basics](http://www.youtube.com/watch?v=QS2G-k2hQyg&yt:cc=on)

- [Syncing](https://www.youtube.com/watch?v=YkiM4DPzSVc&list=PLGgmaKOIHykFoomqkBJAyGiDQ2kyiuTao&yt:cc=on)

- [Switching Card Order](http://www.youtube.com/watch?v=DnbKwHEQ1mA&yt:cc=on)

- [Styling Cards](http://www.youtube.com/watch?v=F1j1Zx0mXME&yt:cc=on)

- [Typing in the Answer](http://www.youtube.com/watch?v=5tYObQ3ocrw&yt:cc=on)

## Key Concepts

### Cards

A question and answer pair is called a _card_. It's similar to a paper
flashcard with a question on the front and answer on the back. However, in
Anki, a card doesn't look like a physical card, and when you
show the answer the question remains visible by default. For example, if
you're studying basic chemistry, you might see a question like:

    Q: Chemical symbol for oxygen?

After deciding the answer is O, you click the
"Show Answer" button, and Anki shows you:

    Q: Chemical symbol for oxygen?
    A: O

After confirming that you are correct, you tell Anki how well you
remembered the answer, and Anki will choose when to show you the card again. For example, Anki might decide to show you the card again in 3 days. In this case, we say the card now has a 3 day interval.

#### Card States

<div id="types-of-cards" />

- **New:** Cards that you have downloaded or created yourself, but have never studied before.

- **Learning:** Cards that were seen for the first time recently, and are still being learned.

- **Review:** Cards that you have finished learning. These cards will be shown again after their delay (interval) has elapsed.
  There are two types of review cards:
  - **Young:** A young card is one that has an interval of less than 21 days.
  - **Mature:** A mature card is one that has an interval of 21 days or greater.

- **Relearn:** Cards that you forgot in the review stage. These cards are returned to the relearning state to be learned again.

### Decks

A _deck_ is a group of cards. You can place cards in different decks to
study parts of your card collection instead of studying everything at
once. Each deck can have different settings, such as how many new cards
to show each day, or how long to wait until cards are shown again.

Decks can contain other decks, which allows you to organize decks into a
tree. Anki uses double colons ("::") to show different levels within the deck tree. For example, a deck called
"Chinese::Hanzi" refers to a "Hanzi" deck, which is part of a "Chinese"
deck. If you select "Hanzi", then only the Hanzi cards will be shown; if
you select "Chinese", then all the Chinese cards will be shown, including the Hanzi cards.

To place decks within a tree, you can either name them with double colons between
each level, or drag and drop them within the deck list. Decks that have
been placed inside another deck are often called "subdecks", and top-level decks are called "parent decks".

Anki starts with a deck called "Default"; any cards which have somehow
become separated from other decks will go here. Anki will hide the
default deck if it contains no cards and you have added other decks.
Alternatively, you may rename this deck and use it for other cards.

Decks in the deck list are sorted alphabetically. This can result in
a surprising order if your deck names contain numbers. For example, "My Deck 10"
will come before "My Deck 9", as 1 comes before 9. If you want "My deck 9" to appear earlier, you can rename it to "My deck 09", which appears before "My deck 10".

Decks are best used to hold broad categories of cards, rather than
specific topics such as "food verbs" or "lesson 1". For more information about
this, please see the [using decks appropriately](editing.md#using-decks-appropriately) section.

For information on how the order of decks affects the order cards are studied in,
please see the [display order](studying.md#display-order) section.

### Notes & Fields

When making flashcards, it’s often desirable to make more than one card
that relates to the same information. For example, if you’re learning
French, and you learn that the word _bonjour_ means hello, you may
wish to create one card that shows you "bonjour" and asks you to
remember "hello", and another card that shows you "hello" and asks you
to remember "bonjour". One card is testing your ability to recognize the
French word, and the other card is testing your ability to produce it.

When using paper flashcards, your only option in this case is to write
out the information twice, once for each card. Some flashcard
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
which pieces of information you want on each card, and Anki takes care of creating the cards for you, and updating them if you make any
edits in the future.

Imagine we want to study French vocabulary, and we want to include a textbook
page number on the back of each card. We want our cards to look like
this:

    Q: Bonjour
    A: Hello
       Page #12

And this:

    Q: Hello
    A: Bonjour
       Page #12

In both cards, we have the same three related pieces of information: a French
word, an English meaning, and a page number. If we put them together,
they’d look like this:

    French: Bonjour
    English: Hello
    Page: 12

In Anki, this collection of related information is called a _note_ and each piece of information is contained in a _field_. In this example, the note
has three fields: "French", "English", and "Page".

To add and edit fields, click the "Fields…​" button while adding or
editing notes. For more information on fields, please see the
[Customizing Fields](editing.md#customizing-fields) section.

### Card Types

In order for Anki to create cards based on our notes, we need to give it
a blueprint that says which fields should be displayed on the front or
back of each card. This blueprint is called a _card type_. Each type of
note can have one or more card types; when you add a note, Anki will
create one card for each card type.

All card types have two _templates_, one for the question and one for the
answer. In the previous French example, we wanted the back of our recognition card to
look like this:

    Q: Bonjour
    A: Hello
       Page #12

To do this, we can set the answer template to:

    Q: {{French}}
    A: {{English}}<br>
       Page #{{Page}}

In card templates, field names are wrapped in double curly brackets, like `{{French}}` or `{{English}}`. Anki replaces those with the actual text the fields contain. This is called a ["Field replacement"](templates/fields.md). Text not wrapped in double curly brackets appears the same on each card. For example, we won't need to add "Page \#" on every note because the template will add it automatically to every card. The `<br>` tag is
a special code that tells Anki to move to the next line. For details, see the [templates](templates/intro.md) section.

The production card's templates will also work in a similar way:

    Q: {{English}}
    A: {{French}}<br>
       Page #{{Page}}

After a card type has been created, every time you add a new note, a card
will be created based on that card type. Card types make it easy to keep
the formatting of your cards consistent and can greatly reduce the
amount of effort involved in adding information. They also mean Anki can
ensure related cards don't appear too close to each other, and they
allow you to fix a typing mistake or factual error once and have all the
related cards update at once.

To add and edit card types, click the "Cards…​" button while adding or
editing notes. For more information on card types, please see the [Cards and Templates](templates/intro.md) section.

### Note Types

Anki allows you to create different types of notes for different
material. Each type of note has its own set of fields and card types.
It's a good idea to create a separate note type for each broad topic
you're studying. In the previous French example, we might create a note
type called "French" for that. If we wanted to learn capital cities, we
could create a note type for that as well, with fields such as
"Country" and "Capital City".

Anki comes with some standard
note types included. These note types are provided to make Anki easier for
new users, but in the long run it's recommended you create your own note
types specifically for the content you are learning. The standard note types are:

- **Basic**\
  Has "Front" and "Back" fields, and will create one card. Text you enter in
  "Front" will appear on the front of the card, and text you enter in "Back"
  will appear on the back of the card.

- **Basic (and reversed card)**\
  Like "Basic", but creates two cards for the text you enter:
  front→back and back→front.

- **Basic (optional reversed card)**\
  Like "Basic", but has a third field called "Add Reverse". If you enter any text into
  that field, a reversed card (back→front) will also be created. For details, see the [Cards and Templates](templates/intro.md) section.

- **Basic (type in the answer)**\
  This is essentially "Basic", with an extra text box on the front where you
  can type your answer in. When you reveal the back, Anki will show you any differences between your input and the actual answer. For details, see the
  [Checking Your Answer](templates/fields.md#checking-your-answer) section.

- **Cloze**\
  A note type that allows you to select text and turn it into a cloze
  deletion (e.g. "Humans landed on the moon in \[…​\]" → "Humans landed on the
  moon in 1969"). For details, see the [cloze deletion](editing.md#cloze-deletion) section.

- **Image Occlusion**\
  Like the cloze note type, but it works with images instead of text,
  which is especially useful when studying material that heavily relies on images,
  such as anatomy and geography. For details, please see the [Image Occlusion](editing.md#image-occlusion)
  section of the manual.

To add your own note types and modify existing ones, you can use Tools →
Manage Note Types from the main Anki window.

Notes and note types are common to your whole collection rather than
limited to an individual deck. This means you can use different
note types in a single deck, or have cards generated from the
same note put into different decks. When you add notes using the
Add window, you can select what note type to use and what deck to use,
and these choices are completely independent of each other. You can also
[change the note type of notes](browsing.md#notes) after you've already created them.

### Collection

Your _collection_ is all the material stored in Anki: your cards,
notes, decks, note types, deck options, and so on.

## Shared Decks

You can watch a video about [Shared Decks and Review Basics](http://www.youtube.com/watch?v=QS2G-k2hQyg&yt:cc=on) on YouTube.

The easiest way to get started with Anki is to download a deck of cards
someone else has shared:

1. Click the "Get Shared" button at the bottom of the deck list.

2. When you've found a deck you're interested in, click the "Download"
   button to download a deck package.

3. Double-click the downloaded package to import it into Anki, or go to
   File → Import.

Note: It’s not currently possible to add shared decks
directly to your AnkiWeb account. You need to first import them to the
desktop app, AnkiMobile, or AnkiDroid, then [synchronize](./syncing.md) to upload the decks to AnkiWeb.

Creating your own deck is the most effective way to learn a complex
subject. Subjects like languages and the sciences can’t be understood
simply by memorizing facts — you need explanation and context to
learn them effectively. Furthermore, inputting the information yourself
forces you to decide what the key points are, leading to a better
understanding.

If you are a language learner, you may be tempted to download a long
list of words and their translations, but this won’t teach you a
language any more than memorizing scientific equations will teach you
astrophysics. To learn properly, you might need textbooks, teachers, or
exposure to real-world sentences.

    Do not learn if you do not understand.
    --SuperMemo

Most shared decks are created by people who are learning material
outside Anki, such as from textbooks, classes, TV, etc. They select the
interesting points from what they learn and put them into Anki. They
might not make any effort to add background information or explanations to the
cards, because they already understand the material. So when someone
else downloads their deck and tries to use it, they might find it very
difficult as the background information and explanations are missing.

That is not to say shared decks are useless. If you’re studying textbook ABC and
someone has shared a deck of ideas from ABC, that’s a great way to save
some time. And for simple subjects that are basically a list of facts,
such as capital city names or country flags, you probably don’t need any
external material. However, for complex subjects, shared decks should be used as a _supplement_ to external material, not as a _replacement_ for it.
