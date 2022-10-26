# Backups

<!-- toc -->

## Automatic backups

Anki will create automatic backups of your card data. These include the text
on your cards and your scheduling information, but do not include sounds or
image files.

Automatic backups can be useful to recover from mistakes, but you should not
rely solely on them. Because they are stored on your local device, they will not
protect you if your device breaks or is stolen. We recommend you combine them with
[manual backups](#manual-colpkg-backups).

### Restoring

To restore from an automatic backup:

- Open Anki, and choose Switch Profile from the File menu.
- Click on the "Open Backup" button.
- Select the backup you wish to restore from.

When restoring from a backup, any changes made since the backup was created will be lost.

Anki disables automatic syncing and backups when you restore from a backup. Once you're
happy that you've restored the correct backup, close and re-open Anki to return to normal.

### Anki 2.1.50+

Backups are created periodically. You can configure the time between backups
in the [preferences](preferences.md) screen. The default is 30 minutes.

Certain operations will trigger a backup, even if the configured time has not
elapsed yet:

- A one-way sync download
- Importing a .colpkg file using File>Import
- Tools>Check Database

After backups are two days old, Anki will start removing some of the older ones.
You can control how many daily, weekly and monthly backups you'd like to keep.

Backups created with 2.1.50 will not be importable into older Anki versions.

### Older Anki versions

Each time your collection is closed (when closing Anki, switching
profiles, or doing a full sync download), Anki creates a backup. By default
it will store up to 30 backups; you can adjust this in the [preferences](preferences.md).

## Manual colpkg backups

### Restoring

You can restore from a manual backup by using File>Import.

### Creating

In Anki 2.1.50+, you can use File>Create Backup to trigger an immediate backup. This
functions like regular automatic backups, and does not include media files.

To create a backup that includes your sounds and images:

- Select Export from the File menu.
- Ensure "Anki collection package (.colpkg)" is selected.
- Enable the "include media" option.

This will create a .colpkg file that contains all of your cards and any sounds/images they
use. We recommend you store the file somewhere safe, like a different device, or a cloud-based
file storage service like Dropbox or Google Drive.

## AnkiWeb

[Synchronising](./syncing.md) your collection with AnkiWeb provides some level of protection
against your device being lost or stolen. If you need to restore your collection from AnkiWeb,
you can force a one-way sync in the preferences screen, or sync from a new device, and then choose
"Download".

## Deletion log

Anki logs deleted notes to a text file called deleted.txt in your
profile folder. These notes are in a text format that can be read by
File&gt;Import, though please note the import feature only supports a
single note type at one time, so if you have deleted notes from
different note types, you'll need to split the file into separate files
for each note type first.
