#import "../my-abbreviations.typ": *
#import "@preview/leipzig-glossing:0.3.0": *

== Nominal and clausal modifiers

=== Nominal modifiers
(For predicative adjectives, see @pred-adj)

Nominal modifiers, which I will call adjectives (#adj) here, justifying its inclusion as its own category later, follow their antecedents, as in @adj1:
#numbered-example(
  (
    source: ([tòb], [udung]),
    morphemes: ([house], [big]),
    translation: [(A/the) big house],
  ),
  label: "adj1",
)
#numbered-example(
  (
    source: ([kung], [ibu], [kufunga]),
    morphemes: ([woman], [small], [breathe.#pst.#real]),
    translation: [The small woman is breathing.],
  ),
  label: "adj2",
)

What in English we would call "adjectives" are hard to distinguish from nouns in Proto-Lisian, given its poor morphology. However, there is one easy test for establishing that adjectives are indeed their own class; namely, the cannot appear in argument positions without the nominalizing particle #LL[te].

=== #THEX

This licenses the following phrase structure rules

#PSR(2, 4)[N][A\*][#UPDOWN][#DOWN #sym.in (#UPARG[adj])][#xhead][#extarg]
