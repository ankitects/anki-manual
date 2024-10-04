# Checks and Errors

<!-- toc -->

When you save changes to a notetype or export a deck, Anki 2.1.45+ checks
for some common errors. These errors will cause issues later on when anyone studies
the affected cards, so Anki won't let you proceed before you have fixed them.

## Basics

Please see [Key Concepts](../getting-started.md#key-concepts) before reading further.

Most of the errors below will require you to modify your notetype/card template. To do so:

- Open the Browse screen, and look at the items on the left.
- Locate the notetype mentioned in error message. You can use the search bar at the top left
  if necessary.
- Click on the notetype, to show its cards/notes on the right.
- Click the Cards... button at the top of the editing area to open the [templates screen](./intro.md#the-templates-screen).

## Specific Issues

### Template Syntax Error

This kind of error indicates an incorrect usage of the [field replacement](./fields.md)
syntax. Visit the [templates screen](./intro.md#the-templates-screen) for the
reported note and card type, and look at the preview area for more information.
Some [more information](https://faqs.ankiweb.net/card-template-has-a-problem.html) about
template problems is available.

### Identical Front Sides

You have Anki configured to create two identical questions for each input. This can
happen if you add a new card type without making any adjustments to it. Identical
cards double your workload, and make Anki's scheduling less effective.

To fix this, open the [templates screen](./intro.md#the-templates-screen), and
select one of the duplicates at the top. Then use the button on the top right to
remove the selected card type. This will delete all the duplicate cards/notes that
were using the card type as well.

### No Field Replacement on Front Side

If you don't use a [field replacement](./fields.md) in the front template of a
card type, every card created from it will look the same on the question side,
regardless of its note. It would then be impossible to answer the card, as you
wouldn't know what answer is expected.

To resolve the issue, open the [templates screen](./intro.md#the-templates-screen),
and click the Add Field button to add one or more fields to the front.

### Cloze Filter Outside Cloze Notetype

The [cloze](../editing.md#cloze-deletion) filter (as in `{{cloze:Some Field}}`)
may only be used on the cloze notetype, and on those created by cloning it.

If you get this error, you can remove the cloze filter from the template.

If you have notes with cloze deletions that are using that notetype, you can select
them in the Browse screen, and use the Change Notetype action to assign them to
a standard Cloze notetype instead.

Older Anki versions did not complain when you attempted to use cloze deletions on
a normal notetype, but this was never a use case that was intended to be supported.
If you want to combine cloze deletions with regular cards, you may find an add-on
like the Closet add-on provides some alternatives.

### No Cloze Filter on Cloze Notetype

A Cloze notetype's front and back templates should have a [cloze](../editing.md#cloze-deletion)
filter. If one is missing, you will need to add it back so that Anki can create cloze cards
correctly.
