# Conlanging Typst Template
An open-sourced version of my Proto-Lisian grammar project,
written in Typst and shared for the benefit of the conlanging community.

## Usage
The files should compile using the [Typst](https://github.com/typst/typst) command-line utility,
by simply typing `typst compile main.typ`.
Alternatively, this should work easily on the [Typst web app](https://typst.app),
merely by setting `main.typ` to visible.

## Organization
### Root
The root contains main.typ, which is the "entry point" to the project.
It's what you'd run `typst compile main.typ` on on the desktop,
or what you'd set to "visible" on the web app.
It's relatively simple in that basically only includes content,
sometimes `#include` -ing content which has been split up in the chapters directory.
Then it has `Conlang Template.typ`,
which features most of the instructions about the "look" of the final PDF,
such as font sizes, colours, margins, headings, etc.
You can leave it alone except if you want to tinker with the look.

The project also uses the package `leipzig-glossing` heavily,
which includes functions for, well, glossing,
but also for creating abbreviations for use in glossing.
That's where `my-abbreviations.typ` comes in.
Here I define some abbreviations needed for Proto-Lisian specifically,
so you'd likely tune it for your particular language.
In that file I also create my own functions mainly for LFG notation.
It's probably safe to say most users won't need those, so they're safe to delete.

### Chapters
The `chapters/` is meant to contain the bulk of the text,
which is to be `#include`-ed
in `main.typ` for final rendering. 
It currently contains only sections which are,
or were planned to,
be long enough to be worth splitting off from `main.typ`
for ease of editing.

### Res
`res/` stands for "resources" and is meant to keep external data,
which for this case is just images. 

## Background
I had originally begun the text
with the intention of publishing it on [Fiat Lingua](https://fiatlingua.org/),
but I lost steam due to personal reasons (the language itself is not abandoned).
So, I decided I might as well open source it and share it with you guys,
in case anyone finds it useful!

For those not yet in the know,
Typst is a typesetting language, like LaTeX.
That means you can use it to create consistent page designs
with as much specificity as you could think.
LaTeX is famously a little hard to get into,
so Typst was created as a newer, modern,
simpler-to-learn alternative.
I am not affiliated with Typst beyond using it as a user.

As hinted above,
the content of the repository is kind of a big mess and all over the place,
not to mention incomplete.
I took advantage of needing this language
to also learn a theory called Lexical Functional Grammar (LFG),
using the grammar as a playground.
This means that a lot inside is very dense and a lot probably wrong,
so please don't judge me too harshly! On the bright side,
it also means you can use the code as a reference
for how to create stuff like tables, glosses, and specialized notation.
I don't claim these solutions to be particularly elegant either,
but they work well enough.
