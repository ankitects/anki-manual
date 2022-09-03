# Importing

<!-- toc -->

Anki can import text files, packaged Anki decks created by the export
feature, Mnemosyne 2.0 .db files, and SuperMemo .xml files. To import a
file, click the File menu and then "Import".

## Text Files

Any **plain text** file that contains fields separated by commas,
semicolons or tabs can be imported into Anki, provided some conditions
are met.

- The files must be plain text (myfile.txt). Other formats like
  myfile.xls, myfile.rtf, myfile.doc must be saved as a plain text
  file first.

- The files must be in UTF-8 format (see below).

- Anki determines the number of fields in the file by looking at the
  first (non-commented) line. Any lines in the file which have a
  different number of fields will be ignored.

- The first line also defines the separating character – if Anki finds
  a ';' on the first line it will use that, if it finds a comma it’ll
  use that, etc.

Fields in your text file can be mapped to any field in your notes,
including the tags field. You can choose which field in the text file
corresponds to which field in the note when you import.

When you import a text file, you can choose what deck to put the cards
in. Keep in mind that if you have the deck override option set for one
or more of your templates, the cards will go to that deck rather than
the one you’ve selected.

This is an example of a valid file:

    foo bar; bar baz; baz quux
    apple; banana; grape

There are two ways to include newlines in fields.

**Escape the multi-lines by placing the contents of the field in
quotation marks**:

    hello; "this is
    a two line answer"
    two; this is a one line one

Because quotes are used to mark where a field begins and ends, if you
wish to include them inside your field, you need to replace a single
doublequote with two doublequotes to "escape" them from the regular
handling, like so:

    field one;"field two with ""escaped quotes"" inside it"

When you use a spreadsheet program like Libreoffice to create the CSV
file for you, it will automatically take care of escaping double quotes.

**Use HTML new lines**:

    hello; this is<br>a two line answer
    two; this is a one line one

You need to turn on the "allow HTML in fields" checkbox in the import
dialog for HTML newlines to work.

Escaped multi-lines will not work correctly if you are using cloze
deletions that span multiple lines. In this case, please use HTML
newlines instead.

You can also include tags in another field and select it as a tags field
in the import dialog:

    first field; second field; tags

This is an example of a valid file where the first line is ignored (\#):

    # this is a comment and is ignored
    foo bar; bar baz; baz quux
    field1; field2; field3

### Spreadsheets and UTF-8

If you have non-Latin characters in your file (such as accents, Japanese
and so on), Anki expects files to be saved in a 'UTF-8 encoding'. The
easiest way to do this is to use the free LibreOffice spreadsheet
program instead of Excel to edit your file, as it supports UTF-8 easily,
and also exports multi-line content properly, unlike Excel. If you wish
to keep using Excel, please see [this forum
post](https://docs.google.com/document/d/12YE_FS6A9ANLTESJNtPP116ti4nNmCBghyoJBRtno_k/edit?usp=sharing)
for more information.

To save your spreadsheet to a file Anki can read with LibreOffice, go to
File&gt;Save As, and then select CSV for the type of file. After
accepting the default options, LibreOffice will save the file and you
can then import the saved file into Anki.

### HTML

Anki can treat text imported from text files as HTML (the language used
for web pages). This means that text with bold, italics and other
formatting can be exported to a text file and imported again. If you
want to include HTML formatting, you can check the "allow HTML in
fields" checkbox when importing. You may wish to turn this off if you’re
trying to import cards whose content contains angle brackets or other
HTML syntax.

If you wish to use HTML for formatting your file but also wish to
include angle brackets or ampersands, you may use the following replacements:

| Character | Replacement |
| --------- | ----------- |
| &lt;      | `&lt;`      |
| &gt;      | `&gt;`      |
| &amp;     | `&amp;`     |

### Importing Media

If you want to include audio and pictures from a text file import, copy
the files into the [collection.media folder](files.md). **Do not put
subdirectories in the media folder, or some features will not work.**

After you’ve copied the files, change one of the fields in your text
file as follows.

    <img src="myimage.jpg">

or

    [sound:myaudio.mp3]

Alternatively, you can use the [find and replace](browsing.md) feature
in the browse screen to update all the fields at once. If each field
contains text like "myaudio", and you wish to make it play a sound,
you’d search for (.\*) and replace it with "\[sound:\\1.mp3\]", with the
'regular expressions' option enabled.

When importing a text file with these references, you must make sure to
enable the "Allow HTML" option.

You might be tempted to do this in a template, like:

    <img src="{{field name}}">

Anki doesn’t support this for two reasons: searching for used media is
expensive, as each card has to be rendered, and such functionality isn’t
obvious to shared deck users. Please use the find & replace technique
instead.

### Bulk Media

Another option for importing large amounts of media at once is to use
the [media import add-on](https://ankiweb.net/shared/info/1531997860).
This add-on will automatically create notes for all files in a folder
you select, with the filenames on the front (minus the file extension,
so if you have a file named apple.jpg, the front would say 'apple') and
the images or audio on the back. If you would like a different
arrangement of media and filenames, you can [change the note
type](browsing.md) of the created cards afterwards.

### Adding Tags

If you want to add 'tag1' and 'tag2' to every line you’re importing, add
the following to the top of the text file:

    tags:tag1 tag2

### Duplicates and Updating

When importing text files, Anki uses the first field to determine if a
note is unique. By default, if the file you are importing has a first
field that matches one of the existing notes in your collection and that
existing note is the same type as the type you’re importing, the
existing note’s other fields will be updated based on content of the
imported file. A drop-down box in the import screen allows you to change
this behaviour, to either ignore duplicates completely, or import them
as new notes instead of updating existing ones.

The duplicate check is done for your 'entire collection', not just in
the current deck. If Anki is indicating that notes have not changed when
you expected them to be imported, please check that the notes are not
already in your collection somewhere.

If you have updating turned on and older versions of the notes you’re
importing are already in your collection, they will be updated in place
(in their current decks) rather than being moved to the deck you have
set in the import dialog. If notes are updated in place, the existing
scheduling information on all their cards will be preserved.

For info on how duplicates are handled in .apkg files, please see the
[Deck Packages](exporting.md#packaged-decks) section.

### File Headers

Anki 2.1.54+ supports certain headers that can be included in the text file to
make importing more powerful or convenient. They consist of `#key:value` pairs
and must be listed in separate lines at the top of the file, though the [tags line](#adding-tags)
may precede them. Since header lines start with the comment character `#`, earlier
Anki clients will just ignore them.

You must enable the new importing option in the preferences screen to use this on
2.1.54. On 2.1.55, the new importing path is the default.

<!-- prettier-ignore -->
| Key | Allowed Values | Behaviour |
| - | - | - |
| `separator` | `Comma`, `Semicolon`, `Tab`, `Space`, `Pipe`, `Colon`, or the according literal characters | Determines the field separator. |
| `html` | `true`, `false` | Determines whether the file is treated as HTML. |
| `tags` | List of tags, separated by spaces | Same as [the old syntax](#adding-tags). |
| `columns` | List of names, separated by the previously set separator | Determines the number of columns and shows their given names when importing. |
| `notetype` | Notetype name or id | Presets the notetype, if it exists. |
| `deck` | Deck name or id | Presets the deck, if it exists. |
| `notetype column` | `1`, `2`, `3`, ... | Determines which column contains the notetype name or id of each note, see [Notetype Column](#notetype-column). |
| `deck column` | `1`, `2`, `3`, ... | Determines which column contains the deck name or id of each note, see [Deck Column](#deck-column). |
| `tags column` | `1`, `2`, `3`, ... | Determines which column contains the tags of each note. |
| `guid column` | `1`, `2`, `3`, ... | Determines which column contains the GUID of each note, see [GUID Column](#guid-column). |

Some headers have further implications.

#### Notetype Column

Usually, all notes from a file will be mapped to a single notetype, and you may
choose which column should be mapped to which field of that notetype.

That changes, if there is a column with notetype names or ids. This allows to
import notes with different notetypes, and their fields will be mapped implicitly:
The first regular column is used for the first field of any note regardless of
its notetype, the second regular column for the second field, and so on.
A 'regular column' here being a column that does not contain special information
like decks, tags, notetypes or GUIDs.

#### Deck Column

Usually, any new cards created as a result of importing a text file will be placed
in a single deck of your choice. If the file contains a deck column, however, new
cards of a note will be placed in its specified deck instead. If the deck does not
exist, a deck with the given name will be created.

#### GUID Column

GUID stands for _Globally Unique Identifier_ and is supposed to not only distinguish
a note from other notes in your collection, but even from other users' notes.

[Remember](#duplicates-and-updating) that Anki looks out for duplicates by comparing
the first field of a note. This may lead to a note being updated with another note
which you would consider to be distinct, or a new note being created although it's
already in your collection, just because you've modified its first field.

You can specify a GUID to have Anki use this instead when looking for duplicates.
If an existing note with the provided GUID is not found, and a new note is created with the provided GUID.
