# Contributing

## Sharing Decks Publicly

To share decks with the general public, [synchronize](syncing.md) them
with AnkiWeb, then log into AnkiWeb and click on "Share" from the menu
next to the deck you wish to share.

If you shared a deck previously (including with previous versions of
Anki), you can update it by clicking "Share" as above. Updating a shared
deck will not reset the download counts or ratings. You can delete a
shared deck that you have uploaded using the Delete button on the shared
deck’s page.

When updating a deck, AnkiWeb expects the deck to be at the same
location as before. If you shared a deck when it was called "Korean
Verbs" for example, and then renamed it to "Korean::Korean Verbs",
resharing will not be able to update the existing copy. If you’ve
forgotten the original name, please contact support.

When you update a shared deck, users who downloaded the deck previously
will not automatically receive updates. If they download the deck again
and re-import it, newly added material will be imported without altering
their existing study progress, provided neither you nor the user has
altered the note type since the first import.

## Sharing Decks Privately

If you’d like to share decks with a limited group of people (such as a
study group or class) rather than the general public, you can do so by
sharing them outside of AnkiWeb.

To share a deck privately, go to the File menu and choose Export. Select
a single deck (not "All Decks"), and turn off "include scheduling
information". This will produce an .apkg file which you can share with
others.

You can share the .apkg file by emailing it to people, placing it on a
website or shared folder, or using a free file sharing service like
Dropbox or Google Drive and sending people a link.

Both the computer version and mobile clients make it easy to import from
an apkg file simply by clicking or tapping on it. AnkiWeb does not have
the ability to import apkg files however, so the recipients of your deck
will need to have the computer version or Anki on their mobile device.

When a user imports an .apkg file, cards that already exist in their
collection will be ignored and any new cards will be added. As long as
they use the same note type, modified cards will also be updated. To
prevent data loss, cards that have been deleted in the new apkg file
will not be deleted in the user’s collection, so if you need to delete
cards from users' decks for whatever reason, you will need to contact
them about it.

## Sharing Add-ons

Please see https://addon-docs.ankiweb.net/#/sharing

## Translating Anki

Please see https://translating.ankiweb.net

## Contributing Code

Anki’s source code is available at <https://github.com/ankitects/anki>

Before contributing, please see the README.contributing file in that
repo.
