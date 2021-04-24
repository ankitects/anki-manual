# Card Generation

## Reverse Cards

You can watch [a video about reversing
cards](http://www.youtube.com/watch?v=DnbKwHEQ1mA&yt:cc=on) on YouTube.

If you want to create cards that go in both directions (e.g., both
“ookii”→“big” and “big”→“ookii”), you have several options. The simplest
is to select the “Basic (and reversed card)” built-in note type. This
will generate two cards, one in each direction.

If you want to generate reverse cards for only some of your material
(perhaps you only want to take the time to study reverses for the most
important material, or some of your cards don’t make sense reversed),
you can select the “Basic (optional reversed card)” note type. This note
type generates a forward-only card when you fill in only the first two
fields; if you additionally enter something in the “Add Reverse” field
(like a 'y'), Anki will generate a reverse card as well. The contents of
this field will never be displayed on a card.

## Card Generation & Deletion

Anki will not create cards with empty front sides. Thus if “My Field”
was empty, and one card’s front template included only that field, the
card would not be created.

If no cards can be created because all of the cards would have empty
front sides, then the Add Notes window will warn you and not allow the
note to be added until at least one card would be generated.

When you edit a previously added note, Anki will automatically create
extra cards if they were previously blank but no longer are. If your
edits have made some cards blank when they previously were not, however,
Anki will not delete them immediately, as that could lead to accidental
data loss. To remove the empty cards, go to Tools → Empty Cards in the
main window. You will be shown a list of empty cards and be given the
option to delete them.

Because of the way that card generation works, it is not possible to
manually delete individual cards, as they would just end up being recreated
the next time the note was edited. Instead, you should make the
relevant conditional replacement fields empty and then use the Empty
Cards option.

Anki does not consider special fields or non-field text for the purposes
of card generation. Thus if your front template looked like the
following, no card would be generated if Country was empty:

    Where is {{Country}} on the map?

## Selective Card Generation

Sometimes you may want to generate extra cards for only some of your
material, such as testing your ability to recall the most important
words of a set. You can accomplish this by adding an extra field to your
note, and adding some text into it (such as "1") on the notes you want
the extra card. Then in the card template, you can make the card’s
creation depend on that field being non-empty. For more information on
this, please see the conditional replacement section below.

## Conditional Replacement

It is possible to include certain text, fields, or HTML on your cards
only if a field is empty or not empty. An example:

    This text is always shown.

    {{#FieldName}}
        This text is only shown if FieldName has text in it
    {{/FieldName}}

    {{^FieldName}}
        This text is only shown if FieldName is empty
    {{/FieldName}}

A real life example is only showing a label if the field is not empty:

    {{#Tags}}
        Tags: {{Tags}}
    {{/Tags}}

Or say you want to display a specific field in blue on the front of your
card if there are extra notes on the back (perhaps the fact that there
are notes serves as a reminder that you should spend more time thinking
about the answer). You can style the field as follows:

    {{#Notes}}
        <span style="color:blue;">
    {{/Notes}}

    {{FieldToFormat}}

    {{#Notes}}
        </span>
    {{/Notes}}

You can also use conditional replacement to control which cards are
generated. This works since Anki will not generate
cards which would have a blank front side. For
example, consider a card with two fields on the front:

    {{Expression}}
    {{Notes}}

Normally a card would be generated if either the expression or notes
field had text in it. If you only wanted a card generated if expression
was not empty, then you could change the template to this:

    {{#Expression}}
        {{Expression}}
        {{Notes}}
    {{/Expression}}

And if you wanted to require both fields, you could use two conditional
replacements:

    {{#Expression}}
        {{#Notes}}
            {{Expression}}
            {{Notes}}
        {{/Notes}}
    {{/Expression}}

Keep in mind that this only works when you place the
conditional replacement code on the _front_ of the card; if you do this
on the back, you will simply end up with cards with a blank back side.
Similarly, since this works by checking if the front field would be
empty, it is important to make sure you wrap the 'entire' front side in
the conditional replacement; for instance, the following would not work
as expected:

    {{#Expression}}
        {{Expression}}
    {{/Expression}}
    {{Notes}}

## Blank Back Sides

Card generation only looks at the front side of the card. For example, if you have a
front template:

    {{Field 1}}

and a back template:

    {{Field 2}}

Then a card will be generated if Field 1 is non-empty. If Field 2 is empty, the card
will still be generated, and you will get a blank back side.

If you wish to avoid a blank back side, you will need to place a required field
on the front template as a conditional, like so:

    {{#Field 2}}
        {{Field 1}}
    {{/Field 2}}

This will ensure the card is generated only if both Field 2 and Field 1 are non-empty.

## Limitations in Older Anki Versions

The following limitations do not apply to Anki 2.1.28+ and AnkiMobile 2.0.64+.

Older Anki versions cannot use negated conditionals for card generation.
For example, on Anki 2.1.28, the following would add a card if a field
called AddIfEmpty is empty, and Front is non-empty:

    {{^AddIfEmpty}}
        {{Front}}
    {{/AddIfEmpty}}

On earlier Anki versions, the negated conditional is ignored, and card
generation will depend only on Front being non-empty.

Mixing **AND** and **OR** conditions can also cause problems on older versions.
For example, the following ("add the card if A **OR** B **OR** C is non-empty")
is fine:

    {{A}}
    {{B}}
    {{C}}

And the following ("add the card if A **AND** B **AND** C are non-empty") is fine:

    {{#A}}
        {{#B}}
            {{#C}}
                {{A}}
            {{/C}}
        {{/B}}
    {{/A}}

But the following ("add the card if A **OR** (B **AND** C) are non-empty") will not work properly:

    {{A}}
    {{#B}}
        {{#C}}
            {{B}}
        {{/C}}
    {{/B}}

## Adding Empty Notes

When you add a new note in Anki 2.1.28+ and AnkiMobile 2.0.64+, if the card
templates and note fields combine to produce no cards, a blank card will be
created using the first template. This allows you to add material even if it's
incomplete, and modify it or the template later to make it valid. If you don't
wish to keep an empty note, you can remove it with the Empty Cards function.

On older Anki versions, Anki refuses to add or import a note if no cards
would be generated.

## Cloze Templates

Please see the [cloze deletion](editing.md#cloze-deletion) section for background info.

The cloze note type functions differently from regular note types.
Instead of a customizable number of card types, it has a single type
which is shared by all cloze deletions on a note.

As mentioned in the card generation section above, generation of regular
cards depends on one or more fields on the question being non-empty.
Cloze deletion note types are generated differently:

- Anki looks on the front template for one or more cloze replacements,
  like {{cloze:FieldName}}.

- It then looks in the FieldName field for all cloze references, like
  {{c1::text}}.

- For each separate number, a card will be generated.

Because card generation functions differently for cloze deletion cards,
{{cloze:…​}} tags can not be used with a regular note type - they
will only function properly when used with a cloze note type.

Conditional generation provides a special field so you can check which
card you are rendering. If you wanted to display the "hint1" field on
the first cloze, and "hint2" field on the second cloze for example, you
could use the following template:

    {{cloze:Text}}

    {{#c1}}
        {{Hint1}}
    {{/c1}}

    {{#c2}}
        {{Hint2}}
    {{/c2}}
