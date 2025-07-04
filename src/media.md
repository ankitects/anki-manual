# Media

Anki stores the sounds and images used in your notes in a folder next to
the collection. For more on the folder location, please see the [file locations](files.md#user-data) section. When you add media within Anki, either by
using the paperclip icon in the [editor](editing.md) or by pasting it into
a field, Anki will copy it from its original location into the media
folder. This makes it easy to back up your collection’s media or move it
to another computer.

If your media filenames contain spaces or other special characters such
as percentage signs, the way the filenames appear in the HTML editor will
differ from the way the filenames appear on disk. For example, a file called
`hello 100%.jpg` will appear as `hello%20100%25.jpg` in the HTML editor.
Internally, Anki still uses the original filenames, so if you would like to
[search](searching.md) for the file or modify the filename with [Find&Replace](browsing.md#find-and-replace), you will
need to use the name as it appears on disk, not as it appears in the
HTML editor. Exporting to a text file is another way to see the underlying
representation.

## Checking Media

You can use the Tools&gt;Check Media menu option to scan your notes and
media folder. It will generate a report of files in the media folder
that are not used by any notes, and media referenced in notes but
missing from your media folder. It also allows you:

- To delete unused media files.
- To tag notes that refer to missing media files.
- To empty your trash folder.
- To restore the deleted files back to your media folder.

This tool does not scan question or answer
templates, which is why you can’t place media references to fields in
the template. If you need a static image or sound on every card, name it
with a leading \_ (e.g., `_dog.jpg`) to tell Anki to ignore it when
checking for media. If you delete media using the unused media check,
Anki will move it into your operating system’s trash folder, so you can
recover if you accidentally delete media that shouldn’t have been
deleted.

## Manually Adding Media

When you add media via Anki's interface, Anki takes care of ensuring the
filenames are encoded in a way that should work across different devices,
removing characters that won't work on certain operating systems,
and truncating very long filenames.

If you manually add files to your [media folder](files.md#user-data),
you should use Tools&gt;Check Media afterwards, to ensure the filenames are
encoded correctly. If you skip this step, any filenames that are not compatible
will be skipped when syncing.

Anki doesn’t follow symbolic links in the media folder when syncing. If you
rely on symlinks for including fonts, stylesheets, or other resources, these files
may appear to work on desktop but fail on mobile. To ensure files sync properly, copy
the actual files into the collection.media folder instead of using symlinks.

## Supported Formats

Anki uses a program called mpv (and mplayer as a fallback) in order to support
sounds and videos. A wide variety of file formats are supported, but not all of
these formats will work on AnkiWeb and the mobile clients. MP3 audio and
MP4 video seems to be the most universally supported.
