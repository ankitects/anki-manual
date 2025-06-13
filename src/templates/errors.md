# Checks and Errors

<!-- toc -->

When you save changes to a note type or export a deck, Anki 2.1.45+ checks
for some common errors. These errors will cause issues later on when anyone studies
the affected cards, so Anki won't let you proceed before you have fixed them.

## Basics

Please see [Key Concepts](../getting-started.md#key-concepts) before reading further.

Most of the errors below will require you to modify your note type/card template. To do so:

- Open the Browse screen, and look at the items on the left.
- Locate the note type mentioned in error message. You can use the search bar at the top left
  if necessary.
- Click on the note type, to show its cards/notes on the right.
- Click the Cards... button at the top of the editing area to open the [templates screen](./intro.md#the-templates-screen).

## Specific Issues

### Template Syntax Error

This kind of error indicates an incorrect usage of the [field replacement](./fields.md)
syntax.

You can correct mistakes on the template by opening the card templates screen:

- On the computer version, edit a problem card, and then click on the Cards... button
- On AnkiMobile, while viewing a problem card in the study screen, tap the cog/gear, then Card Template.

When you correct a mistake, it will update all cards of that type - you do not need to make the same change for every card that uses the template.

What needs changing will depend on the message you are getting.

**Found '{{Field}}', but there is no field called 'Field'**

This indicates your template includes the name of a field that doesn't exist. To fix the problem, locate the
`{{Field}}` inside the card template, and remove it.

**Missing }} in {{Field**

This message is shown when {{ is found in the template without a matching }}. For example, if you have

```
{{Field
```

then this needs to be changed to

```
{{Field}}
```

**Missing {{/Field}}**

This means Anki found `{{#Field}}` or `{{^Field}}` in your card template, without a matching `{{/Field}}`. Removing `{{#Field}}` or `{{^Field}}` from the template will fix the error.

**Found {{/One}}, but expected {{/Two}}**

Conditional replacements need to be closed in the same order they are opened. For example, the following template is incorrect:

```
{{#One}}
  {{#Two}}
    {{Three}}
  {{/One}}
{{/Two}}
```

To fix the problem, the template should be changed like so:

```
{{#One}}
  {{#Two}}
    {{Three}}
  {{/Two}}
{{/One}}
```

**Found {{/Field}}, but missing '{{#Field}}' or '{{^Field}}'**

Closing tags must be matched by opening tags. For example, the following is invalid, because there is no `{{#Two}}` or `{{^Two}}` at the start:

```
  {{Field}}
{{/Two}}
```

It can be fixed by removing the closing tag:

```
{{Field}}
```

### Identical Front Sides

You have Anki configured to create two identical questions for each input. This can
happen if you add a new card type without making any adjustments to it. Identical
cards double your workload, and make Anki's scheduling less effective.

To fix this, open the [templates screen](./intro.md#the-templates-screen), and
select one of the duplicates at the top. Then use the button on the top right to
remove the selected card type. This will delete all the duplicate cards/notes that
were using the card type as well.

### Front of Card is Blank

<div id="no-field-replacement-on-front-side" />

Anki displays cards by combining the fields you've entered with a
template that says which fields should appear on the front and back of your cards. If you receive a
message that a card has a blank front, it means either none of the fields included on your front template have any text in them, or you have fields that have text,
but none are included on the front template.
You can fix this problem by editing the card on the computer version, clicking on **Cards...**,
and checking to make sure at least one field with some text on it is included on the front template.
You can add extra fields with the Add Field button.

If you are using the Cloze note type,
please make sure you've included one or more cloze deletions in the Text field, e.g. {{c1::some cloze-deleted text}}.

If you're using the type-in-the-answer functionality, please make sure you've included another field on the front side as well. 

### No Cloze Filter on Cloze Note Type
<div id="no-cloze-filter-on-cloze-notetype" />

A Cloze note type's front and back templates should have a [cloze](../editing.md#cloze-deletion)
filter. If one is missing, you will need to add it back so that Anki can create cloze cards
correctly.

#### Single empty cards

When making clozes, each cloze number is turned into a separate card. For example, the following will create three cards:

```
{{c1::This}} is a {{c2::sample}} {{c3::sentence}}.
```

If you you later edit the text, and either remove or change a cloze number, the previously created card may become blank. For example:

```
{{c1::This}} is a {{c2::sample}}
```

and

```
{{c1::This}} is a {{c2::sample}} {{c1::sentence}}.
```

are both changes that would make card 3 blank. When you view card 3, you'll see a message indicating that the card is blank, and can be cleaned up with the Empty Cards function. You can access that function via the Tools menu of the computer version's main window, and use it to remove blank cards. Please check the reported empty cards first, and if in doubt, create a backup with the File>Export menu item before proceeding.

#### All cloze cards empty

If you accidentally modify your card template, it may prevent any cloze deletions from appearing. If that has happened, please edit one such problem card, and note down the name of the first field - it is usually called "Text". Then, please:

- Click on the Cards... button
- Replace the front text with

  ```
  {{cloze:Text}}
  ```

- Replace the back text with the same.

If your field was called something other than Text, replace Text with the name of the field.
