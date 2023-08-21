# Packaged Decks

## Updating

When you import an .apkg file, Anki will identify any notes in it that are
already in your collection due to a previous import. If the notes in the file
are newer than your local copy, the notes will be updated with the contents of
the file.

This updating process is not possible if the notetype is changed (e.g if either
you or the deck author do things like add an extra field to the notetype).
You will still be able to import any missing notes from the file, but
notes you have imported previously will not be updated if the deck author
has made changes.

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
