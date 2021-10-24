# Field Replacements

<!-- toc -->

## Basic Replacements

The most basic template looks something like this:

    {{Front}}

When you place text within curly brackets, Anki looks for a field by
that name, and replaces the text with the actual content of the field.

Field names are case sensitive. If you have a field named `Front`,
writing `{{front}}` will not work properly.

Your templates are not limited to a list of fields. You can also include
arbitrary text on your templates. For example, if you’re studying
capital cities, and you’ve created a note type with a “Country” field,
you might create a front template like this:

    What's the capital city of {{Country}}?

The default back template will look something like this:

    {{FrontSide}}

    <hr id=answer>

    {{Back}}

This means “show me the text that’s on the front side, then a divider
line, and then the Back field”.

The 'id=answer' part tells Anki where the divider is between the
question and the answer. This allows Anki to automatically scroll to the
spot where the answer starts when you press 'show answer' on a long card
(especially useful on mobile devices with small screens). If you don’t
want a horizontal line at the beginning of the answer, you can use
another HTML element such as a paragraph or div instead.

## Newlines

Card templates are like web pages, which means a special command is required
to create a new line. For example, if you wrote the following in the template:

    one
    two

In the preview, you’d actually see:

    one two

To add a new line, you need to add a &lt;br&gt; code to the end of a
line, like so:

    one<br>
    two

The br code stands for "(line) br(eak)".

The same applies for fields. If you want to display two fields, one on
each line, you would use

    {{Field 1}}<br>
    {{Field 2}}

## Text to Speech

This feature requires Anki 2.1.20, or AnkiMobile 2.0.56. AnkiDroid does
not currently support this method.

To have Anki read the Front field in a US English voice, you can place
the following in your card template:

    {{tts en_US:Front}}

On Windows, macOS, and iOS, Anki will use the OS’s built in voices. On
Linux, no voices are built in, but voices can be provided by add-ons,
such as [this one](https://ankiweb.net/shared/info/391644525).

To see a list of all available languages/voices, place the following on
your card template:

    {{tts-voices:}}

If there are multiple voices that support your chosen language, you can
specify desired voices in a list, and Anki will choose the first
available voice. For example:

    {{tts ja_JP voices=Apple_Otoya,Microsoft_Haruka:Field}}

This would use Otoya when on an Apple device, and Haruka when on a
Windows PC.

Specifying a different speed is possible in some TTS implementations:

    {{tts fr_FR speed=0.8:SomeField}}

Both speed and voices are optional, but the language must be included.

On a Mac, you can customize the available voices:

- Open the System Preferences screen.

- Click on Accessibility.

- Click on Speech.

- Click on the system voice dropdown, and choose Customize.

Some voices sound better than others, so experiment to choose the one
you prefer. Please note that the Siri voice can only be used by Apple
apps. Once you’ve installed new voices, you’ll need to restart Anki for
the new voices to become available.

On Windows, some voices like Cortana can not be selected, as Microsoft
does not make those voices available to other applications.

On a cloze note type, you can make Anki read only the elided sections
using the `cloze-only` filter, like so:

    {{tts en_US:cloze-only:Text}}

The cloze-only filter is supported in Anki 2.1.29+ and AnkiMobile 2.0.65+.

## Special Fields

There are some special fields you can include in your templates:

    The note's tags: {{Tags}}

    The type of note: {{Type}}

    The card's deck: {{Deck}}

    The card's subdeck: {{Subdeck}}

    The type of card ("Forward", etc): {{Card}}

    The content of the front template
    (only valid in back template): {{FrontSide}}

FrontSide will not automatically play any audio that was on the front side
of the card. If you wish to have the same audio play automatically on both
the front and back of the card, you’ll need to manually include the audio
fields on the back as well.

As with other fields, special field names are case sensitive - you must use
`{{Tags}}` rather than `{{tags}}` for example.

## Hint Fields

It’s possible to add a field to the front or back of a card, but make it
hidden until you explicitly show it. We call this a 'hint field'. Before
adding a hint, please bear in mind that the easier you make it to answer
a question in Anki, the less likely you are to remember that question
when you encounter it in real life. Please have a read about the
'minimum information principle' on
<http://www.supermemo.com/articles/20rules.htm> before proceeding.

First, you’ll need to add a field to store the hint in if you have not
already. Please see the [fields](../editing.md#customizing-fields) section if you’re not sure how
to do this.

Assuming you’ve created a field called MyField, you can tell Anki to
include it on the card but hide it by default by adding the following to
your template:

    {{hint:MyField}}

This will show a link labeled “show hint”; when you click it, the
content of the field will be displayed on the card. (If MyField is
empty, nothing will be shown.)

If you show the hint on the question and then reveal the answer, the
hint will be hidden again. If you want to have the hint always revealed
when the answer is shown, you will need to remove `{{FrontSide}}` from
your back template and manually add the fields you wish to appear.

It is not currently possible to use a hint field for audio — the audio
will play regardless of whether you’ve clicked on the hint link.

If you want to customize the appearance or behaviour, you’ll need to
implement the hint field yourself. We can not provide any support for
doing so, but the following code should get you started:

    {{#Back}}
    ﻿<a class=hint href="#"
    onclick="this.style.display='none';document.getElementById('hint4753594160').style.display='inline-block';return false;">
    Show Back</a><div id="hint4753594160" class=hint style="display: none">{{Back}}</div>
    {{/Back}}

## Dictionary Links

You can also use field replacement to create dictionary links. Imagine
you’re studying a language and your favourite online dictionary allows
you to search for text using a web URL like:

    http://example.com/search?q=myword

You could add an automatic link by doing the following in your template:

    {{Expression}}

    <a href="http://example.com/search?q={{Expression}}">check in dictionary</a>

The template above would allow you to search for each note’s expression
by clicking on the link while reviewing. There is a caveat however, so
please see the next section.

## HTML Stripping

Like templates, fields are stored in HTML. In the dictionary link
example above, if the expression contained the word "myword" without any
formatting, then the HTML would be the same: "myword". But when you
include formatting in your fields, extra HTML is included. If "myword"
was bolded for example, the actual HTML would be
"&lt;b&gt;myword&lt;/b&gt;".

This can present a problem for things like dictionary links. In the
above example, the dictionary link would end up being:

    <a href="http://example.com/search?q=<b>myword</b>">check in dictionary</a>

The extra characters in the link would likely confuse the dictionary
site, and you’re likely not to get any matches.

To solve this, Anki provides the ability to strip formatting from fields
when they are replaced. If you prefix a field name with text:, Anki will
not include any formatting. So a dictionary link that worked even with
formatted text would be:

    <a href="http://example.com/search?q={{text:Expression}}">check in dictionary</a>

## Right To Left Text

If you’re using a language that reads from right to left, you’ll need
to adjust the template like so:

    <div dir=rtl>{{FieldThatHasRTLTextInIt}}</div>

## Media & LaTeX

Anki does not scan templates for media references, because it is slow to
do so. This has implications for including media on the template.

### Static Sounds/Images

If you wish to include images or sounds on your cards that are the same
for every card (eg, a company logo at the top of each card):

1. Rename the file so it starts with an underscore, eg "\_logo.jpg".
    The underscore tells Anki that the file is used by the template and
    it should be exported when sharing the deck.

2. Add a reference to the media on your front or back template, like:

<!-- -->

    <img src="_logo.jpg">

### Field References

Media references to fields are not supported. They may or may not display
during review, and will not work when checking for unused media,
importing/exporting, and so on. Examples that won’t work:

    <img src="{{Expression}}.jpg">

    [sound:{{Word}}]

    [latex]{{Field 1}}[/latex]

Instead, you should include the media references in the field. Please
see the [importing section](../importing.md#importing-media) for more information.

## Checking Your Answer

You can watch [a video about this
feature](http://www.youtube.com/watch?v=5tYObQ3ocrw&yt:cc=on) on
YouTube.

The easiest way to check your answer is to click "Basic" at the top
left of the card adding screen, and select "Basic (type in the answer)".

If you have downloaded a shared deck and would like to type in the answer
with it, you can modify its card template. If it has a template like:

    {{Native Word}}

    {{FrontSide}}

    <hr id=answer>

    {{Foreign Word}}

To type in the foreign word and check if you are correct, you need to
edit your front template so that it looks like this:

    {{Native Word}}
    {{type:Foreign Word}}

Note that we have added `type:` in front of the field we want to
compare. Since FrontSide is on the back of the card, the type answer box
will appear on the back as well.

When reviewing, Anki will display a text box where you can type in the
answer, and upon hitting <kbd>Enter</kbd> or showing the answer, Anki will show you
which parts you got right and which parts you got wrong. The text box’s
font size will be the size you configured for that field (via the
“Fields” button when editing).

This feature does not change how the cards are answered, so it’s still
up to you to decide how well you remembered or not.

Only one typing comparison can be used on a card. If you add the above
text multiple times, it will not work. It also only supports a single
line, so it is not useful for comparing against a field that is
comprised on multiple lines.

Anki uses a monospaced font for the answer comparison so that the
“provided” and “correct” sections line up. If you wish to override the
font for the answer comparison, you can put the following at the bottom
of your styling section:

    code#typeans { font-family: "myfontname"; }

Which will affect the following HTML for the answer comparison:

    <code id=typeans>...</code>

Advanced users can override the default type-answer colors with the css
classes 'typeGood', 'typeBad' and 'typeMissed'. AnkiMobile supports
'typeGood' and 'typeBad', but not 'typeMissed'.

If you wish to override the size of the typing box and don’t want to
change the font in the Fields dialog, you can override the default
inline style using `!important`, like so:

    #typeans { font-size: 50px !important; }

It is also possible to type in the answer for cloze deletion cards. To
do this, add `{{type:cloze:Text}}` to both the front and back
template, so the back looks something like this:

    {{cloze:Text}}
    {{type:cloze:Text}}
    {{Extra}}

Note that since the cloze type does not use FrontSide, this must be
added to both sides on a cloze note type.

If there are multiple sections elided, you can separate the answers in
the text box with a comma.

Type answer boxes will not appear in the ["preview"
dialog](intro.md) in the browser. When you review or look at
the preview in the card types window, they will display.
