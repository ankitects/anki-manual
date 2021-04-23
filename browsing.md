# Browsing

The Browse window allows you to search through your cards and notes, and edit
them. It is opened by clicking **Browse** in the main window, or by pressing
**b**. It is comprised of three sections: the *sidebar* on the
left, the *card/note table* on the top right, and the *editing area* on the bottom
right. By positioning the mouse between two sections, it is possible to click
and drag to expand one section and shrink the other.

## Table Modes

Anki 2.1.43+ offers two modes to show either cards or notes in the data table.
You can change the current mode by clicking the switch at the top, to the left
of the search area, or pressing <kbd>Alt</kbd>+<kbd>T</kbd>. The switch also
indicates if **C**ards or **N**otes are currently shown.  

**Note:** For the sake of simplicity, this manual generally assumes the Cards
mode to be the active one. Whenever selecting/finding/etc. “cards” is mentioned,
the reader may substitute it for “cards or notes depending on the active mode”.


## Sidebar

The *sidebar* on the left allows quick access to common search terms. Clicking
on an item will search for it.

You can hold down <kbd>Ctrl</kbd> (<kbd>Command</kbd> on Mac) while clicking in
order to append the clicked item to the current search with an AND condition,
instead of starting a new search. If you wanted to show learning cards that were
also in the German deck for instance, you could click on "Learning",
then <kbd>Ctrl</kbd>-click on "German".

You can hold down <kbd>Shift</kbd> to create an OR search instead of an AND. For
example, you could click one deck, then <kbd>Shift</kbd>-click another to show
cards from either of the decks in the same view.

You can hold down <kbd>Alt</kbd> (<kbd>Option</kbd> on Mac) in order to reverse the
search (prepend a `-`) – for instance, to show all cards in a current deck that
do *not* have a certain tag. <kbd>Alt</kbd>/<kbd>Option</kbd> can be combined with
either <kbd>Ctrl</kbd> or <kbd>Shift</kbd> (e.g., <kbd>Ctrl</kbd>+<kbd>Alt</kbd>-clicking
will result in adding a new search term that is negated).

On Anki 2.1.39+, you can also hold down both <kbd>Ctrl</kbd> and
<kbd>Shift</kbd> when clicking a search term to replace all occurences of the
same kind of search with the new one.
Let’s say you had previously typed in a complicated search expression like
`deck:Swahili (is:due or tag:important)`
and now want to perform the same search for your Urdu deck. You can
<kbd>Ctrl</kbd>+<kbd>Shift</kbd>-click the Urdu deck in the sidebar to obtain the
according search expression:
`deck:Urdu (is:due or tag:important)`.


To remove tags that are not used by any notes, use **Tools &gt; Check Database**
from the main window.

## Search Box

Above the card list is a search box. You can type in various things
there to search for cards. For information on the search syntax,
see [Searching](searching.md).

## Card/Note Table

The table's rows represent cards or notes that match the current search.

The columns are configurable: right click on one (or <kbd>Ctrl</kbd>-click on a
Mac) to choose which columns you’d like to see.
You can find the list of available columns and their descriptions
[below](#browser-columns).
You can drag columns to reorder them. Clicking on a column will sort by that column;
click again to reverse the sort order. Not all columns can be sorted on.

When you click on a row, the corresponding note will be shown in the bottom section.
If you drag the mouse or hold <kbd>Ctrl</kbd> or <kbd>Command</kbd> to select multiple
rows, the editor will be temporarily hidden. Various operations (such as
changing the deck) can operate on multiple cards or notes at once, independent
of the active mode. Therefore in Cards mode, a note is considered to be selected
if any of its cards is selected, and in Notes mode, a card is considered to be selected
if its note is selected. If an operation only works for a single card (like
showing card info), and Notes mode is active, it's performed on the current note's
first card.

The background color will change depending on the card and note.
In Cards mode, Anki will change the color of the row depending on the state of
the card. The first match will be used: 1. if flagged, use the flag color; 2. if
suspended, yellow; 3. if marked, purple. In Notes mode, color is only applied to
marked notes.  
For more information about marked notes and suspended cards, see [Editing and
More](studying.md#editing-and-more).


## Editing Area

The bottom right area displays the note of the currently selected row. For
more information about cards and notes, see [Getting Started](getting-started.md).
For more information on formatting buttons, see [Editing](editing.md).

You can see a preview of what the currently selected card would look
like when reviewing by clicking the **Preview** button next to the search
box. Note that this will not display any type answer fields on your
cards, which makes it easier to preview cards quickly.
In Notes mode, the preview is shown for the first card of the selected note.

## Menu

Right clicking on selected cards in the *card list* shows up a menu of actions 
you can perform on those cards:

**Info** shows various information about the currently selected card,
including its review history. For more information, see [Card Info](stats.md#card-info).

**Toggle Mark** and ***Toggle Suspend*** are documented in
[editing and more](studying.md#editing-and-more).

**Change Deck** allows you to move cards to a different deck. Cards can be
placed in different decks, so if you want to move all cards in a note,
you should first use **Edit &gt; Select Notes** to select all cards, right click on
selected cards and then click **Change Deck**.

**Add Tags** and **Remove Tags** allow you to add or remove tags from notes
in bulk. To remove unused tags from *sidebar*, start from the main window,
click **Tools** in the menu bar and click **Check Database**.

**Delete** removes the selected card(s) and their notes. It is not
possible to remove individual cards, as individual cards are controlled
by the [templates](templates/intro.md).

## Find and Replace

To replace text in selected notes, you can either:

- Right click on selected notes in the *card list*, and click **Find and Replace**.

- In the **Browser** window, click **Notes** in the menu bar and click **Find and Replace**.

The regular expression option allows you to perform complex replacements.
For example, given the following text in a field:

    <img src="pic.jpg" />

Searching for:

    <img src="(.+?)" />

and on Anki 2.1.28, replacing with:

    ${1}

on older Anki versions, replacing with:

    \1

Will change the card to:

    pic.jpg

A full discussion on regular expressions is outside the scope of this document.
There are a number of syntax guides available on the web:
- For Anki 2.1.28+, see <https://docs.rs/regex/1.3.9/regex/#syntax>.
- For older Anki versions, see <http://docs.python.org/library/re.html>.

## Finding Duplicates

You can use the **Notes > Find Duplicates** option to search for notes that
have the same content. When you open the window, Anki will look at all
of your note types and present a list of all possible fields. If you
want to look for duplicates in the *Back* field, you’d select it from
the list and then click **Search**.

By default, it will search in all note types that have the field you provided. 
This differs from the duplicate check when you add cards manually, which 
is limited to a single note type.

The **Optional filter** text box allows you to narrow down where Anki will
look for duplicates. If you only want to search for duplicates in the
"French Vocab" and "French Verbs" note types, you would enter:

    note:'french vocab' or note:'french verbs'

Or you might want to look only for duplicates in a particular deck, so
you could use:

    deck:'myDeck'

The search syntax is the same as used when searching in the browser.
For more information, see [Searching](searching.md).

You can click one of the links in the search results list to display the
duplicate notes in that set. If the search brings up a large number of
duplicates, you may wish to instead click the **Tag Duplicates** button,
which will tag all matching notes with *duplicate*. You can then search
for this tag in the browser and handle them all from the same screen.

## Other Menu Items

Some other items in the menus:

**Reschedule** allows you to move cards to the end of the new card queue,
or reschedule them as a review card on a given date. The second option
is useful if you have imported already-learnt material, and you want to
start it off with higher initial intervals. For example, choosing 60 and
90 will give all the imported cards an initial interval of 2 to 3
months.

The card’s revision history is not cleared when rescheduling:
rescheduling changes the current state of a card, but not its history.
If you want to hide the history, you will need to export your notes as a
text file, delete the notes, and then import the text file again,
creating new notes.

**Reposition** allows you to change the order new cards will appear in.
You can find out the existing positions by enabling the _due_ column, as
described in the card list section above. If you run the reposition
command when multiple cards are selected, it will apply increasing
numbers to each card in turn. By default the number increases by one for
each card, but this can be adjusted by changing the "step" setting. The
**Shift position of existing cards** option allows you to insert cards
between currently existing ones, pushing the currently existing ones
apart. For instance, if you have five cards and you want to move 3, 4,
and 5 between 1 and 2, selecting this setting would cause the cards to
end up in the order 1, 3, 4, 5, 2. By contrast, if you turn this option
off, 1 and 2 will get the same position number (and it will thus be
unpredictable which of the cards with the same number comes up first).

**Change Note Type** allows you to convert the selected notes from one
type to another. For example, imagine you have a *Russian* note type and a
*Computer* note type, and you accidentally added some computer-related
text into a *Russian* note. You can use this option to fix that mistake.
The scheduling of cards is not affected.

**Select Notes** takes the currently selected cards, finds their notes,
and then selects all cards of those notes. If your notes have only one
card, this does nothing.

The **Go** menu exists to provide keyboard shortcuts to jump to various
parts of the browser, and to go up and down the card list.


## Columns

All columns are available for both [Cards and Notes mode](#table-modes)
but sometimes with slightly different names and data. The following table lists
the behaviours for both modes.
The list of cards or notes can be sorted by every column except for the
Question and Answer columns.


| Column | Cards mode | Notes mode |
|-|-|-|
| Answer | The back side of the card in one line with the question stripped. You can also choose a [custom format](templates/styling.md#browser-appearance) in the card type editor instead. | The same as in Cards mode, only for the first card of the note. |
| Card(s) | The name of the card's template. | The number of cards the note has. |
| Card Modified | The last time changes were made to the card (e.g., when you reviewed the card and the review history and interval were updated). | The last time changes were made to one of the note's cards. |
| Created | The same as in Notes mode for the card's note. | The date the note was created. |
| Deck | The name of the deck the card is in. | The number of different decks the note's cards are in, or the deck name if all cards are in the same deck. |
| Due | The due date for cards in review or (re)learning, and the position in the new card queue for new cards. The line is wrapped in brackets if the card is suspended or buried. Sorting is done by type and only then by date or position. | The due date for the note's next due review or (re)learning card that is not suspended, buried or in a filtered deck. |
| (Avg.) Ease | The card's ease if it is not new. | The average ease for the note's cards that are not new. |
| (Avg.) Interval | The card's interval if the card is in review or relearning. | The average interval for the note's cards that are in review or relearning. |
| Lapses | How often the card was rated “Again”. | The total lapses for all cards of the note. |
| Note | The same as in Notes mode for the card's note. | The name of the note's notetype. |
| Note Modified | The same as in Notes mode for the card's note. | The last time the note (e.g. the content of a field) was edited. |
| Question | The front side of the card in one line. You can also choose a [custom format](templates/styling.md#browser-appearance) in the card type editor instead. | The same as in Cards mode, only for the first card of the note. |
| Reviews | How often the card has been reviewed. | The total review count for all cards of the note. |
| Sort Field | The same as in Notes mode for the card's note. | The content of the note's field that is defined as the notetype's sort field. Only this one field can be displayed and sorted by. You can change the sort field by clicking **Fields...** in the editing area. |
| Tags | The same as in Notes mode for the card's note. | The note's tags. |
