# Checks and Errors

<!-- toc -->

When you save changes to a notetype or export a deck, Anki 2.1.45+ checks
for some common errors. These errors will cause issues later on when anyone studies
the affected cards, so Anki won't let you proceed before you have fixed them.

## Template Syntax Error

This kind of error indicates an incorrect usage of the [field replacement](./fields.md)
syntax. Visit the [templates screen](./intro.md#the-templates-screen) for the
reported note- and card type, and look at the preview area for more information.

## Identical Front Sides

Two card types have identical front templates. This can happen if you add a new
card type without making any adjustments to it. In consequence, for every note
with this notetype two identical cards will be created, doubling your work load
and tripping up the spaced repetition algorithm.

Keep in mind that, even if the back sides are different, you would not be able to
know which answer is asked for, if you are prompted with their common front side.

To fix this, [delete or modify](./intro.md#the-templates-screen) the reported
card type. For example, if you get this error for the second card type of
the notetype "Basic (and reversed card)" you may have accidentally switched its
sides, and will want to switch them back.

## No Field Replacement on Front Side

If you don't use a [field replacement](./fields.md) in the front template of a
card type, every card created from it will look the same on the question side,
regardless of its note. That means, you won't be able to know which answer it
asks for.

## Cloze Filter Outside Cloze Notetype

The [cloze](../editing.md/#cloze-deletion) filter (as in `{{cloze:Some Field}}`)
may only be used on the cloze notetype, and on those created by cloning it.
If you get this error, you can either remove the cloze filter, or change the notes
you want to create cloze deletions for to a cloze notetype.

This happened to work on previous Anki versions, but you should not rely on it
working correctly.

## No Cloze Filter on Cloze Notetype

On both sides of a cloze notetypes's card type, the [cloze](../editing.md/#cloze-deletion)
filter should be used. Otherwise, it will not create cloze cards correctly, when
you add notes with this notetype. If you don't want or need cloze deletions, use
a different notetype instead.
