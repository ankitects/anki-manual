# Media

Anki stores the sounds and images used in your notes in a folder next to
the collection. For more on the folder location, please see the [file
locations](files.md) section. When you add media within Anki, either by
using the paperclip icon in the [editor](editing.md) or by pasting it into
a field, Anki will copy it from its original location into the media
folder. This makes it easy to back up your collection’s media or move it
to another computer.

You can use the Tools&gt;Check Media menu option to scan your notes and
media folder. It will generate a report of files in the media folder
that are not used by any notes, and media referenced in notes but
missing from your media folder. It does not scan question or answer
templates, which is why you can’t place media references to fields in
the template. If you need a static image or sound on every card, name it
with a leading \_ (e.g., '\_dog.jpg') to tell Anki to ignore it when
checking for media. If you delete media using the unused media check,
Anki will move it into your operating system’s trash folder, so you can
recover if you accidentally delete media that shouldn’t have been
deleted.

Anki uses a program called mpv (and mplayer as a fallback) in order to support
sounds and videos. A wide variety of file formats are supported, but not all of
these formats will work on AnkiWeb and the mobile clients. MP3 audio and
MP4 video seems to be the most universally supported.
