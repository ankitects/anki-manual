# Field Replacement Errors

You can correct mistakes on the template by opening the card templates screen:

- On the computer version, edit a problem card, and then click on the Cards... button
- On AnkiMobile, while viewing a problem card in the review screen, tap the cog/gear, then Card Template.

When you correct a mistake, it will update all cards of that type - you do not need to make the same change for every card that uses the template.

What needs changing will depend on the message you are getting.

**Found '{{Field}}', but there is no field called 'Field'**

This indicates your template includes the name of a field that doesn't exist. To fix the problem, locate the
{{Field}} inside the card template, and remove it.

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

This means Anki found `{{#Field}}` or `{{^Field}}` in your card template, without a matching `{{/Field}}`. Removing  `{{#Field}}` or `{{^Field}}` from the template will fix the error.

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
