# No cloze found on card

<h2>Single empty cards</h2>

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

<h2>All cloze cards empty</h2>

If you accidentally modify your card template, it may prevent any cloze deletions from appearing. If that has happened, please edit one such problem card, and note down the name of the first field - it is usually called "Text". Then, please:

- Click on the Cards... button
- Replace the front text with

  ```
  {{cloze:Text}}
  ```

- Replace the back text with the same.

If your field was called something other than Text, replace Text with the name of the field.
