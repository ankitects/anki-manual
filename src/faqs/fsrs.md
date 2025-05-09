# FSRS

## My interval went down (e.g. from 4 to 3 days) after optimizing my FSRS parameters. Why is that?
You might have optimized your FSRS parameters. If you optimize your parameters,
FSRS might determine that the intervals should be shorter than it previously
predicted. The reason is that the
[Difficulty, Stability, Retrievability](https://github.com/open-spaced-repetition/fsrs4anki/wiki/abc-of-fsrs)
values are recalculated, once you optimize your FSRS parameters.
