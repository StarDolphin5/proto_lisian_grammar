#import "../my-abbreviations.typ": *

= Phonology <phonology>
== Consonants <consonants>
#block[
  #table(
    columns: 5,
    align: (col, row) => (left, center, center, center, center).at(col),
    stroke: (x, y) => (
      left: if x > 0 { 1pt },
      bottom: if y == 0 { 1pt },
    ),
    [], [labial], [alveolar], [palatal], [velar],
    [Stop], [p b], [t d], [k g], [],
    [Nasal], [m], [n], [], [ŋ],
    [Trill], [], [r], [], [],
    [Fricative], [f], [s], [], [],
    [Approximant], [w], [], [j], [\(w)],
    [Lateral], [], [l], [], [],
  )
]

Orthographic note: #phonemic[ŋ] is romanized as #graphemic[ng]. As we will see in the #link(<phonotactics>)[phonotactics] section, #phonemic[ŋ] can never be an onset consonant, so word-medial #graphemic[ng] is always interpreted as #phonemic[ŋg].

== Vowels <vowels>
#block[
  #table(
    columns: 5,
    align: (col, row) => (left, center, center, center, center).at(col),
    stroke: (x, y) => (
      left: if x > 0 { 1pt },
      bottom: if y == 0 { 1pt },
    ),
    [], [Front], [Near-front], [Near-back], [Back],
    [High], [i], [], [], [u],
    [Near-high], [e], [ɪ], [ʊ], [o],
    [Near-low], [ɛ], [], [], [ɔ],
    [Low], [a], [], [], [ɑ],
  )
]

Orthographic note: the vowels #phonemic[ɪ ɛ ɑ ɔ ʊ] are written #graphemic[ì è à ò ù] respectively.

== Phonotactics <phonotactics>

=== Syllable construction
Proto-Lisian syllables have the structure (C)V(C). Hiatus is allowed. #phonemic[ŋ] is disallowed in the onset.

=== Vowel harmony
The vowels are organized in a bijection between +ATR and -ATR vowels, as follows:
#block[
  #table(
    columns: 2,
    align: (col, row) => (center, center).at(col),
    stroke: (x, y) => (
      left: if x > 0 { 1pt },
      bottom: if y == 0 { 1pt },
    ),
    [+ATR], [-ATR],
    [i], [ɪ],
    [e], [ɛ],
    [a], [ɑ],
    [o], [ɔ],
    [u], [ʊ],
  )
]
A noted constraint involving vowel harmony is that all of a root's vowels must have the same [ATR] value.

Vowel harmony is both progressive and regressive, extending from the root to both prefixes and suffixes. For instance, #lexample[\*gògja][didn't cough] is not valid, but #LL[gògjà] is. Since at least in Proto-Lisian there is a one-to-one correspondence between vowels, I will adopt the notation of using the capital letter in broad transcription to refer to either value. In the case of the previous example, we could say the negative suffix is /jA/.

Compounding represents the main restriction on harmony; if two roots are compounded, their respective [ATR] values are conserved; therefore, if the values are different, prefixes would agree in [ATR] with the root closest to the start of the word, while suffixes with the root closest to the end. For example, you can see this in the following
#numbered-example(
  (
    source: ([kè-mùg-edi-a],),
    morphemes: ([#npst\-eat-fish-#real],),
    translation: "Eats fish (lit. fish-eats)",
  ),
  label: "compound-harmony",
)

In @compound-harmony, we see that the nonpast prefix #phonemic[k(E)-] matches the [-ATR] of #LL[mùg], but the mood vowel #phonemic[A] matches the [+ATR] of #LL[edi].
