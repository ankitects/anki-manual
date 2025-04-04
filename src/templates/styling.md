# Styling & HTML

<!-- toc -->

## Card Styling

You can watch [a video about styling cards](http://www.youtube.com/watch?v=F1j1Zx0mXME&yt:cc=on) on YouTube.
The video shows Anki 2.0’s interface, but the concepts are largely the
same.

The styling section of the Cards screen can be accessed by clicking the
"Styling" button next to the "Back Template" button. In that section,
you can change the background color of the card, the default font, the
text alignment, and so on.

The standard options available to you are:

**font-family**\
The name of the font to use on the card. If your font has spaces in it
like "MS Unicode", then you need to surround the font name in double
quotes as in this sentence. It is also possible to use multiple fonts on
one card; for information on that, please see below.

**font-size**\
The size of the font in pixels. When changing it, make sure you leave px
at the end.

**text-align**\
Whether the text should be aligned in the center, left, or right.

**color**\
The color of the text. Simple color names like "blue", "lightyellow",
and so on will work, or you can use HTML color codes to select arbitrary
colors. Please see [this webpage](https://htmlcolorcodes.com/) for more
information.

**background-color**\
The color of the card background.

Any CSS can be placed in the styling section – advanced users may wish
to do things like add a background image or gradient, for example. If
you’re wondering how to get some particular formatting, please search
the web for information about how to do it in CSS, as there is a great
deal of documentation available.

The styling is shared between all cards, which means that when you make
an adjustment it will affect all cards for that note type. It is also
possible to specify card-specific styling, however. The following
example will use a yellow background on all cards except the first one:

```css
.card {
  background-color: yellow;
}
.card1 {
  background-color: blue;
}
```

## Image Resizing

Anki shrinks images to fit the screen by default. You can change this by adding
the following to the bottom of your styling section (outside of the default
`.card { ... }`):

```css
img {
  max-width: none;
  max-height: none;
}
```

AnkiDroid sometimes has [trouble scaling images to fit the
screen](https://github.com/ankidroid/Anki-Android/issues/3612). Setting maximum
image dimensions using css should fix this, but seems to be ignored as of
AnkiDroid 2.9. A fix is to append `!important` to each style directive, for
example:

```css
img {
  max-width: 300px !important;
  max-height: 300px !important;
}
```

If you try to change the style for images and find that the star that
appears on marked cards is affected (for instance, it becomes way too
large), you can target it with the following:

```css
img#star {
  ...;
}
```

You can explore the styling of cards interactively by using Chrome:

<https://addon-docs.ankiweb.net/porting2.0.html#webview-changes>

Anki 2.1.50+ supports image resizing within the editor natively.

## Field Styling

The default styling applies to the whole card. You can also make certain
fields or part of the card use a different font, color, and so on. This
is particularly important when studying foreign languages, as Anki will
sometimes be unable to correctly display characters unless an
appropriate font has been chosen.

Say you have an “Expression” field, and you want to give it the OSX Thai
font “Ayuthaya”. Imagine your template already reads:

    What is {{Expression}}?

    {{Notes}}

What we need to do is wrap the text we want to style in some HTML. We
will put the following in front of the text:

    <div class=mystyle1>

And the following behind it:

    </div>

By wrapping the text like the above, we tell Anki to style the wrapped
text with a custom style called “mystyle1”, which we will create later.

Thus if we wanted the entire “What is …​?” expression to use the Thai
font, we would use:

    <div class=mystyle1>What is {{Expression}}?</div>

    {{Notes}}

And if we wanted only the expression field itself to use the Thai font,
we’d use:

    What is <div class=mystyle1>{{Expression}}</div>?

    {{Notes}}

After we’ve edited the template, we now need to move to the Styling
section between the templates. Before editing it, it should look
something like:

```css
.card {
  font-family: arial;
  font-size: 20px;
  text-align: center;
  color: black;
  background-color: white;
}
```

Add your new style to the bottom, so it looks like:

```css
.card {
  font-family: arial;
  font-size: 20px;
  text-align: center;
  color: black;
  background-color: white;
}

.mystyle1 {
  font-family: ayuthaya;
}
```

You can include any styling you want in the style. If you wanted to
increase the font size too, you’d change the mystyle1 section to look
like:

```css
.mystyle1 {
  font-family: ayuthaya;
  font-size: 30px;
}
```

It’s also possible to bundle custom fonts with your deck, so you don’t
need to install them on your computer or mobile device. Please see the
[installing fonts](#installing-fonts) section for more info.

## Audio Replay Buttons

When audio or text to speech is included on your cards, Anki will show
buttons you can click on to replay the audio.

If you prefer not to see the buttons, you can hide them in the
preferences screen.

You can customize their appearance in your card styling, for example, to
make them smaller and colored, you could use the following:

```css
.replay-button svg {
  width: 20px;
  height: 20px;
}
.replay-button svg circle {
  fill: blue;
}
.replay-button svg path {
  stroke: white;
  fill: green;
}
```

## Text Direction

If you use a language that is written right-to-left, such as Arabic or Hebrew,
you can add the CSS `direction` property to the .card section for correct display during review:

```css
.card {
  direction: rtl;
}
```

This will change the direction of the entire card. You can change the direction
of only certain fields by wrapping their references in some HTML:

    <div dir="rtl">{{Front}}</div>

To change the direction of fields in the editor, please see
the [editing](../editing.md#customizing-fields) section.

## Other HTML

Your templates can contain arbitrary HTML, which means that all the
layout possibilities used on internet web pages can also be used on your
cards. Things like tables, lists, images, links to external pages and so
on are all supported. With tables for example, you could change the
layout so that the front and back of a card appear on the left and right
instead of the top and bottom.

Covering all of HTML’s features is outside the scope of this manual, but
there are plenty of good introductory guides to HTML available on the
web if you’d like to learn more.

## Browser Appearance

If your card templates are complex, it may be difficult to read the
question and answer columns (called "Front" and "Back") in the [card list](../browsing.md#cardnote-table). The "browser appearance" option allows you to define a
custom template to be used only in the browser, so you can include only
the important fields and change the order if you desire. The syntax is
the same as in standard card templates.

When using this option, if the text in the question column is repeated at the beginning of the answer column, Anki will display the text only in the question column. For example, if the question column text is "People in Ladakh speak", and the answer is "People in Ladakh speak Ladakhi", the answer column will only display "Ladakhi", omitting the rest.

## Platform-Specific CSS

Anki defines some special CSS classes that allow you to define different
styling for different platforms. The example below shows how to vary the
font depending on where you’re reviewing:

```css
/* Windows */
.win .example {
  font-family: "Example1";
}
/* macOS */
.mac .example {
  font-family: "Example2";
}
/* Linux desktops */
.linux:not(.android) .example {
  font-family: "Example3";
}
/* both Linux desktops, and Android devices */
.linux .example {
  font-family: "Example4";
}
/* both Android and iOS */
.mobile .example {
  font-family: "Example5";
}
/* iOS */
.iphone .example,
.ipad .example {
  font-family: "Example6";
}
/* Android */
.android .example {
  font-family: "Example7";
}
```

And in the template:

```html
<div class="example">{{Field}}</div>
```

You can also use properties like .gecko, .opera, and .ie to select
particular browsers when using AnkiWeb. Please see
<http://rafael.adm.br/css_browser_selector/> for a full list of options.

## Installing Fonts

You can install fonts directly to Anki. This is useful if you’re using Anki on
a work or school computer where you don’t have permission to install new fonts,
or if you’re using Anki on a mobile device.

Anki supports the most widely used font formats, such as TrueType (.ttf),
OpenType (.otf), Web Open Font Format (.woff) and others.

### Add Font to Media Folder

Once you have downloaded a supported font, such as "Arial.ttf", you have to add
it to the media folder.

1. Rename the file, adding an underscore at the start, so it becomes
   like "\_arial.ttf". Adding an underscore will tell Anki that this
   file will be used on a template, and should not be deleted when
   checking for unused media.

2. In your computer’s file browser, go to your [Anki Folder](../files.md),
   and then a folder called "User 1" (or your profile name if you’ve
   renamed/added profiles).

3. Inside the folder, you should see a folder called collection.media.
   Drag the renamed file to that folder.

### Update Template to Use That Font

After the font has been added to the media folder, you need to update the
template.

1. Click **Add** at the top of the main screen, and then select the
   note type you want to change with the top left button.

2. Click **Cards**.

3. In the styling section, add the following text to the bottom (after
   the last "}" character), replacing "\_arial.ttf" with the name of
   the file you copied into your media folder:

```css
@font-face {
  font-family: myfont;
  src: url("_arial.ttf");
}
```

Only change the "arial" part, not the "myfont" part.

After that, you can either change the font for the entire card, or for
individual fields. To change the font for the entire card, simply locate
the font-family: line in the .card section and change the font to
"myfont". To change the font for only certain fields, please see the
[Field Styling](#field-styling) instructions above.

Please make sure the filenames match exactly. If the file is called
arial.TTF and you write arial.ttf in your card templates, it will not
work.

## Night Mode

You can customize the way templates appear when night mode is enabled in
the preferences screen.

If you wanted a lighter grey background, you could use
something like:

```css
.card.nightMode {
  background-color: #555;
}
```

If you have a "myclass" style, the following would show the text in
yellow when night mode is enabled:

```css
.nightMode .myclass {
  color: yellow;
}
```

## Fading and Scrolling

Anki will automatically scroll to the answer by default. It looks for an
HTML element with id=answer, and scrolls to that. You can place the id
on a different element to adjust the scrolling position, or remove the
id=answer to turn off scrolling.

The question side of a card fades in by default. If you wish to adjust
this delay, you can place the following at the top of your front card
template:

```html
<script>
  qFade = 100;
  if (typeof anki !== "undefined") anki.qFade = qFade;
</script>
```

100 (milliseconds) is the default; set to 0 to disable fading.

## Javascript

As Anki cards are treated like webpages, it is possible to embed some
Javascript on your cards via the card template. For a good reference
please read [this post](https://forums.ankiweb.net/t/card-templates-user-input-101-buttons-keyboard-shortcuts-etc-guide/13756)
in the forums.

Because Javascript is an advanced feature and so many things can go
wrong, **Javascript functionality is provided without any support or
warranty**. We can not provide any assistance with writing Javascript,
and can not guarantee any code you have written will continue to work
without modification in future Anki updates. If you are not comfortable
addressing any issues you encounter on your own, then please avoid using
Javascript.

Each Anki client may implement card display differently, so you will
need to test the behaviour across platforms. A number of clients are
implemented by keeping a long running webpage and dynamically updating
parts of it as cards are reviewed, so your Javascript will need to
update sections of the document using things like
document.getElementById() rather than doing things like
document.write().

Functions like window.alert may not be available. Anki will write
javascript errors to the terminal, so you'll need to [view the console](https://addon-docs.ankiweb.net/console-output.html#console-output) to
see them. To debug issues with JavaScript, you can use Chrome's
[inspector](https://addon-docs.ankiweb.net/debugging.html#webviews).
