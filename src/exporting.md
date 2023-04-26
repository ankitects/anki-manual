# Exporting

<!-- toc -->

Exporting allows you to save part of your collection as a text file or
packaged Anki deck. To export, click the File menu and choose 'Export'.

## Text Files

If you choose "Notes in Plain Text", Anki will write the contents of the
notes into a text file. Each field is separated by a tab. If you edit
the resulting file and don't modify the first field, you can later
import that file back into Anki and Anki will update your notes based on
your edits, provided you import back into the same note type.

If you find yourself needing to edit the first field as well, you'll
need to change the format of your note type so that the first field is
an ID number rather than actual text. (You can install
the [Add note id](https://ankiweb.net/shared/info/1672832404)
add-on to make this easier.)

In order for formatting to be preserved when you import text back in,
the text is exported with all the HTML formatting embedded in it.

## Packaged Decks

A 'packaged deck' consists of cards, notes, note types, and any sounds or
images bundled up into a file ending with .apkg or .colpkg. You can use
packaged decks to transfer cards between people, or for backing up parts
of your collection.

There are two different kinds of packaged decks.

### Collection (.colpkg)

When you export all decks with scheduling included, this is called a
'collection package'. Anki will copy your entire collection into a file
ending in .colpkg, and place it on your desktop. A collection package is
used to back up your collection, or copy it to another device.

Collection packages created with previous versions of Anki were called
collection.apkg.

When this file is later imported, Anki will delete all the current cards
in the collection, and replace the collection with the items in the
file. This is useful for copying your collection back and forth between
devices.

Existing media in your collection is not deleted when you import a
collection package. To delete unused media, use Tools&gt;Check Media.

If you choose Anki 2.1.50+ Collection Package format, imports and exports
will be faster, and media files will be compressed, but the resulting
.colpkg file will not be readable by older Anki clients.

### Deck (.apkg)

Deck packages contain a single deck (and any child decks it may have).
They have a filename ending with .apkg, but a filename other than
collection.apkg. When you import a deck package, Anki will add the
contents into your collection, rather than overwriting your collection.

If some notes in the deck package have previously been imported, Anki
will keep the version with the most recent modification time. So if you
download an updated deck, the edits that have been made in the updated
version will be made in your collection as well, but if you re-import an
unchanged deck after making edits in your collection, the changes in
your collection will be kept.

If you choose not to include scheduling information, Anki will assume
that you are sharing the deck with other people, and will remove marked
and leech tags so that they will have a clean copy of it.
