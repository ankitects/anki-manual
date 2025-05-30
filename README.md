# Anki Manual

This repository contains the source of [Anki's user manual](https://docs.ankiweb.net).

## License 

This manual is licensed under the [CC BY-SA 4 license](https://creativecommons.org/licenses/by-sa/4.0/).

## Contributing

Contributions are welcome! Please see the [issue tracker](https://github.com/ankitects/anki-manual/issues) for things you can start working on. For details on local development, see [CONTRIBUTING](CONTRIBUTING.md).

Unless stated otherwise, any pull requests you
submit will be licensed under the [CC BY-SA 4 license](https://creativecommons.org/licenses/by-sa/).

## Style Guidelines

In 2024, we began efforts to standardize the styles used throughout the documentation. You will probably find that following conventions are not consistently applied in the manual, but these are the rules we are using going forward. If you are submitting edits or updates, please follow these guidelines, and you are welcome to update other text to fit these guidelines as well. 

- Use double quotes, `"`, instead of single quotes, `'`.
- For emphasis, such as when defining a word, use italics, `_`.
- Also use italics when referring to a word itself rather than what it means, e.g. "To search for either _dog_ or _cat_, use `dog or cat`".
- When referring to UI elements, use bold formatting, `**`.
- When referring to keyboard buttons, wrap them with `<kbd></kbd>`.
- Use code formatting for example inputs by wrapping them with backticks, `` ` ``.

## Legacy Links

We often use anchor links to direct users to the specific section of a page that will be most useful to them. These anchor links are based on section headers, e.g., `https://docs.ankiweb.net/deck-options.html#timers`. If you are submitting a PR that changes or deletes a section header, please add a hidden anchor so those legacy anchor links will continue to function correctly. 

Example: If you needed to change the header "Clocks" to "Timers" -- you would replace: 
```
## Clocks
```
with:
```
## Timers
<a id="Clocks"></a>
```
