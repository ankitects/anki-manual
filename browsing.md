# Browsing

The Browse window allows you to search through your cards and notes, and edit
them. It is opened by clicking **Browse** in the main window, or by pressing
**b**. It is comprised of three sections: the *sidebar* on the
left, the *card/note table* on the top right, and the *current note* on the bottom
right. By positioning the mouse between two sections, it is possible to click
and drag to expand one section and shrink the other.

## Table Modes

Anki 2.1.43+ offers two modes to show either cards or notes in the data table.
You can change the current mode by clicking the switch in the top left corner
right of the sidebar or pressing <kbd>Alt</kbd>+<kbd>T</kbd>. The switch also
indicates if **C**ards or **N**otes are currently shown.  

**Note:** For the sake of simplicity, this manual generally assumes the Cards
Mode to be the active one. Whenever selecting/finding/etc. “cards” is mentioned,
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
Mac) to choose which columns you’d like to see. You can drag columns to
reorder them. Clicking on a column will sort by that column; click again
to reverse the sort order. Not all columns can be sorted on.

The due column behaves differently for different types of cards. New
cards show a number rather than a due date, which indicates the order
the new cards will be presented in. Cards in (re)learning and reviews
will both show a due date, but when sorting they are first grouped by
type and then sorted by date.

The "edited" and "changed" columns sound the same but track different
things. "Edited" tracks the last time changes were made to the _note_
(e.g., when the content of a field was edited), while "changed" tracks
the last time changes were made to the _card_ (e.g., when you reviewed
the card and the review history and interval were updated).

When you click on a row, the corresponding note will be shown in the bottom section.
If you drag the mouse or hold <kbd>Ctrl</kbd> or <kbd>Command</kbd> to select multiple
rows, the editor will be temporarily hidden. Various operations (such as
changing the deck) can operate on multiple cards or notes at once, independent
of the active mode. Therefore in Cards Mode, a note is considered to be selected
if any of its cards is selected and in Notes Mode, a card is considered to be selected
if its note is selected. If an operation only works for a single card (like
showing card info) and Notes Mode is active, it's performed on the current note's
card with index 1.

The background color will change depending on the card and note.
In Cards Mode, a row is assigned the first applicable of the following colors:
The color of its flag if any; a shade of yellow if the card is suspended; a
shade of purple if its note is marked. In Notes Mode, only the last criterion
applies.  
For more information about marked notes and suspended cards, see [Editing and
More](studying.md#editing-and-more).

One of the available columns is called the **Sort Field**. Anki allows you
to choose one field from each type of note to be used for sorting. You
can change the sort field by clicking **Fields** in the current note
section.

The question and answer columns display what you’d see on the question
and answer while reviewing, except the answer column will strip the
question part for clarity. You can also choose a [custom
format](templates/styling.md#browser-appearance) in the card type editor instead of showing
what would be seen during review.

## Current Note

The bottom right area displays the note of the currently selected row. For
more information about cards and notes, see [Getting Started](getting-started.md).
For more information on formatting buttons, see [Editing](editing.md).

You can see a preview of what the currently selected card would look
like when reviewing by clicking the **Preview** button next to the search
box. Note that this will not display any type answer fields on your
cards, which makes it easier to preview cards quickly.
In Notes Mode, the preview is shown for the first card of the selected note.

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
