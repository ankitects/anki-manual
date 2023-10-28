# Packaged Decks

<!-- toc -->

Anki packages (.apkg files) enable you to import decks, notes, notetypes, and cards from
other users. They are commonly shared on [AnkiWeb](https://ankiweb.net/shared/decks).

## Scheduling

Anki packages may also contain scheduling information, which is useful if you want to
transfer decks between devices or profiles. However, when importing
a deck shared by someone else, you typically do not want to adopt their card intervals
or review history.

If you encounter imported cards with unexpectedly large intevals, the deck author may
accidentally have included their scheduling information. You can use the
[Set Due Date feature](../browsing.md#cards) to reset the imported cards. On Anki
23.10 and later, you can remove any scheduling information during the import process.

## Updating

When you import an .apkg file, Anki will identify any notes in it that are
already in your collection due to a previous import. If the notes in the file
are newer than your local copy, the notes will be updated with the contents of
the file by default.

This updating process is generally not possible if the notetype is changed (e.g if either
you or the deck author do things like add an extra field to the notetype).
You will still be able to import any missing notes from the file, but
notes you have imported previously will not be updated if the deck author
has made changes.

### Anki 23.10 and Later

Anki 23.10 introduced more flexibility: You can choose to unconditionally
update notes and notetypes, always overwriting your modifications,
or, on the other hand, never update existing objects.

Also, if both you and the deck author modified the same notetype, you can now decide to
_merge_ the two versions. This will preserve all templates and fields contained in
either one, but will require a full sync, and may mark other existing notes as modified.

#### Note to Deck Authors

Merging relies on template and field ids, which were introduced in Anki 2.1.67.
If a template or field lacks an id, because it has been created with an earlier
release, Anki attempts to find an equivalent by comparing names.

See this [this add-on](https://ankiweb.net/shared/info/2063785767) for why it is
advantageous to share notetypes with field and template ids, and how to add them to
existing ones.

### Workaround for Anki 2.1.66 and Earlier

If you know the deck author has made changes and you wish to gain access to
them, changing the notetype back is possible, but rather difficult. You'll need
to do the following:

- Create a new profile, and import the .apkg file into it.
- Locate one of the notes that failed to update in the Browse screen and select it.
- Use the Fields & Cards buttons to check the field names and card template names,
  and note them down.
- Use the [debug console](https://docs.ankiweb.net/misc.html#debug-console) to determine the notetype id.
  It will be the number on the last line.

```
nt = bcard().note().note_type()
print("notetype", nt["name"], "has id", nt["id"])
```

- Return to your normal profile, locate the same card, and select it. Run the following
  in the debug console, replacing `xxx` with the ID you got above:

```
nt = bcard().note().note_type()
print("current:", nt["name"], "has id", nt["id"])
nt = mw.col.models.get(xxx)
print("desired:", nt["name"], "has id", nt["id"])
```

- If it prints two different notetype names, you will need to use the Change Notetype
  action to change the notetype of your existing notes to the desired one.

- You then need to use the Fields and Cards buttons to check the field and template
  names match the one in your test profile. They must match exactly - there should be no
  more or less, and the spelling should be identical.
