#import "../Conlang Template.typ": *
#import "@preview/leipzig-glossing:0.5.0": *
#import abbreviations: *
#import "../my-abbreviations.typ": *

= Syntax <syntax>
== Introduction
Proto-Lisian is broadly head-initial and has notably little inflectional morphology on non-verbs. Because of this, I describe constructions first and leave descriptions of the morphology, including the verbal paradigm and derivational morphology, to a later section.


== Basic order <word-order>
Basic word order is AVP/SV (aka SVO; I am using #cite(<payne_describing_1997>, form: "prose", supplement: [p. 75])'s terminology). Thus, a prototypical transitive sentence looks something like:
#numbered-example((
  source: ([Kùng], [gugesa], [ìf]),
  morphemes: ([woman], [see.#pst.#pfv], [man]),
  translation: [The/a woman saw the/a man.],
))

Similarly, an intransitive sentence can look like
#numbered-example((
  source: ([Lis], [gùgògàjà]),
  morphemes: ([Lis (name)], [cough.#pst.#pfv.#neg]),
  translation: [Lis didn't cough.],
))

=== #THEX
The former examples suggest the following phrase structure rules:

1. #PSR(
    2,
    3,
  )[N][V][#updownsubj][#UPDOWN][#extarg][#xhead][][(#MOTHERL #FEAT[cat]) = I]
// Optionality required in PSR 2 to allow for intransitive verbs
2. #PSR(2, 3)[V][(N)][#UPDOWN][(#UPARG[#FEAT[obj]])=#DOWN][#xhead][#intarg]

The annotation (#MOTHERL #FEAT[cat]) = I is adopted based on the analysis of topicalization and copulae, see below.

#include "adjectives.typ"

== Ditransitive clauses
For verbs of giving, the indirect object is placed after the verb but before the direct object, similar to English sentences like #E[I gave *Miriam* a rope]. An equivalent sentence in Proto-Lisian would look like:
#numbered-example((
  source: ([wa], [guolebi], [Miriam], [ludo]),
  morphemes: ([1#sg], [give.#pst.#pfv], [Miriam], [rope]),
  translation: [I gave Miriam a rope.],
))

=== #THEX

This suggests the existence of a PSR as such:

3. #PSR(
    3,
    3,
  )[V][N][N][#UPDOWN][#UPDOWNARG[#objtheta]][#UPDOWNARG[#FEAT[obj]]][#xhead][#intarg][#intarg]


== Topicalization and focus

Proto-Lisian allows for argument topicalization by fronting, allowing it for subjects, direct and oblique objects, and prepositional phrases, as in the following sentences:
#numbered-example((
  source: ([wa], [guolebi], [Miriam], [ludo]),
  morphemes: ([1#sg], [give.#pst.#pfv], [Miriam], [rope]),
  translation: [I gave Miriam a rope. (Unmarked or subject-topic)],
))
#numbered-example((
  source: ([ludo], [wa], [guolebi], [Miriam]),
  morphemes: ([rope], [1#sg], [give.#pst.#pfv], [Miriam]),
  translation: [The rope—I gave it to Miriam (Unmarked or subject-topic.)],
))
#numbered-example((
  source: ([ning], [owu], [ido], [làrà], [edi]),
  morphemes: ([#loc], [in], [lake], [#cop.#prs], [fish]),
  translation: [In the lake, there is a fish.],
))

Notably, the only exception seems to be the indirect object of verbs of giving, which may be a strategy to avoid ambiguity in sentences like:
#numbered-example((
  source: ([\*Miriam], [wa], [guolebi], [ludo]),
  morphemes: ([Miriam], [1#sg], [give.#pst.#pfv], [rope]),
  translation: (
    [Miriam—I gave the rope to her. OR The rope—I gave Miriam to it.]
  ),
))

It should be noted Proto-Lisian does not seem to have had any passivization mechanism. Instead, topicalization was used to raise objects and obliques to prominence, since phrase structure helps fix other arguments in place.

=== #THEX
This suggests the following:

#PSR(
  2,
  4,
)[{N | N | PP}][I][{(#UPARG[#FEAT[subj]]) = #DOWN | (#UPARG[#FEAT[obj]]) = #DOWN | {#UPARG[#objtheta] | #UP #objtheta} = #DOWN}][#UPDOWN][#extarg][#xhead][(#DOWNSIGMA #FEAT[df]) = #VAL[topic]][]

#include "predicate_nominals.typ"


== Noun incorporation <noun-incorporation>
Noun incorporation (NI) is a construction whereby "a N stem is compounded with a V stem to yield a larger, derived V stem" #cite(<mithun_evolution_1984>, supplement: [p. 1]). It is similar to compounds such as "babysitting" and "mountain-climbing" in English, although noun incorporation is a much more systematic and productive process. Here I adopt #cite(<mithun_evolution_1984>, form: "prose")'s four-way typology of NI which, in the words of Whimemsz as preserved in #cite(<lichen_the_fictioneer_conlang_2021>, form: "prose") "is probably close enough to the truth that it can be extremely useful to conlangers." It certainly is enough to explain phenomena in Proto-Lisian (of course, causation is in the opposite direction).

=== Type I Noun Incorporation
Type I NI is simple lexical compounding, where "The compound is more than a description; it is the name of an institutionalized activity or state. The [incorporated noun] loses its individual salience both semantically and syntactically. It no longer refers to a specific entity; instead, it simply narrows the scope of the V" #cite(<mithun_evolution_1984>, supplement: [p. 856]).

Proto-Lisian, demonstrating its consistent head initialness, has compounds like the following:
#numbered-example((
  source: ([-rum-akep-],),
  morphemes: ([drink-mead],),
  translation: [To drink (as in drink alcohol) (lit. "drink mead")],
))
#numbered-example(
  (
    source: ([Eko], [kù-mùg-edi-a]),
    morphemes: ([Eko], [#npst\-eat-fish-#real]),
    translation: [Eko is eating fish. / Eko eats fish.],
  ),
  label: "fisheat1",
)

To demonstrate the aforementioned distinction between noun incorporation and a straight sentence, compare @fisheat1 with @fisheat2:
#numbered-example(
  (
    source: ([Eko], [kù-mùg-à], [edi]),
    morphemes: ([Eko], [#npst\-eat-#real.#ipfv], [fish]),
    translation: [Eko is eating a fish.],
  ),
  label: "fisheat2",
)

In @fisheat2, Eko is eating a specific fish, or a whole fish; in @fisheat1, there is no specification as to how many or how much fish she is eating, or indeed if eating fish is instead a regular activity and not an instantiation of such.

#cite(<mithun_evolution_1984>, form: "author") notes "Since [incorporated nouns] do not refer to specific entities, these constructions tend to be used in contexts without specific, individuated patients. They may be generic statements; or descriptions of on-going activities, in which a patient has been incompletely affected; or habitual activities..."

Indeed, Proto-Lisian is very productive with these kinds of meanings; unlike #cite(<mithun_evolution_1984>, form: "author")'s earlier suggestion, the activity doesn't have to be institutionalized at all.


=== Type II Noun Incorporation
#strong[instrumental]
#numbered-example(
  (
    source: ([Èbèr], [wu-wi-ludo-i], [ìf]),
    morphemes: ([Èbèr], [#pfv\-tie.#pfv\-rope-#real], [man]),
    translation: [Èbèr tied the/a man with a rope.],
  ),
)


=== #THEX
Noun incorporation, especially type II NI, presents a special challenge to a theory like Lexical Functional Grammar, because a strongly held assumption of the theory is that syntax doesn't have access to the inside of words, also known as "strong lexicalism." #cite(<mithun_evolution_1984>, form: "author", supplement: [p. 847]), starting her abstract, calls NI "perhaps the most nearly syntactic of all morphological processes," due to its heavy modifications to verbal valency and semantics. In fact, LFG equipped with only c-structure and f-structure may not be able to capture the phenomenon properly.

This is one area where the strength of #cite(<asudeh_flexible_2012>, form: "prose")'s proposal shines through. With s-structure concerned with capturing the actual meaning intended to be conveyed, f-structure can be allowed to do its job capturing functional-syntactic information.

Specifically, we can propose that the lexicon, which is generative in its own right, actually composes the meanings of the N and the V into one lexical entry with the appropriate adjusted valency. This distinguishes, for example, the following (for simplicity, we ignore information structure and assume progressive aspect):

#grid(
  columns: 3,
  rows: auto,
  gutter: 0.75em,
  [kùmùgà], [V], [(#UPARG[pred]) = 'eat'],
  [], [], [#TEMPL[\@present]],
  [], [], [#TEMPL[\@progressive]],
  [],
  [],
  [$
      lambda x lambda y lambda e. op("eat")(e) and op("agent")(e,x) and op("patient")(e,y)
      :\
      #UPARGSIGMA[subj] multimap #UPARGSIGMA[obj] multimap (#UPSIGMA #FEAT[event]) multimap #UPSIGMA
    $],
)

#grid(
  columns: 3,
  rows: auto,
  gutter: 0.75em,
  [edi], [N], [(#UPARG[pred]) = 'eat'],
  [], [], [(#UPSIGMA #FEAT[giv]) $gt.eq$ #VAL[referential]],
  [], [], [$"fish" : #UPSIGMA$],
)

And:

#grid(
  columns: 3,
  rows: auto,
  gutter: 0.75em,
  [kùmùgedia], [V], [(#UPARG[pred]) = 'eat-fish'],
  [], [], [#TEMPL[\@present]],
  [], [], [#TEMPL[\@progressive]],
  [],
  [],
  [$
      lambda x lambda y lambda e. op("eat")(e) and op("agent")(e,x) and op("patient")(e,"fish")
      :\
      #UPARGSIGMA[subj] multimap (#UPSIGMA #FEAT[event]) multimap #UPSIGMA
    $],
)

== Questions
"Within the class of interrogative clauses, languages typically distinguish two subtypes: those for which the information requested is a simple affirmation or disaffirmation (yes or no), and those for which the requested information is a more elaborate locution - a phrase, a proposition, or an entire discourse" #cite(<payne_describing_1997>, supplement: [p. 295]).


=== Polar questions
Polar questions are, in simple terms, "interrogative
clauses for which the expected answer is either 'yes' or 'no'" #cite(<payne_describing_1997>, supplement: [p. 295]).

Polar questions are marked by the obligatory clitic #LL[nu-] (glossed as #q for "question") attached to the first word of the clause, no matter its category. For instance,
#numbered-example(
  (
    source: ([Nu-kurumakepa?],),
    morphemes: ([#q\-drink.mead.#npst.#real],),
    translation: [Do you drink mead?],
  ),
)

==== Indirect polar questions
#numbered-example(
  (
    source: ([Lis], [kàrì], [nu=wèrà], [mùmùgedia]),
    morphemes: ([Lis], [ask.#npst.#real], [#q=queen], [eat.fish.#pfv.#pst]),
    translation: [Lis asks if the queen ate fish.],
  ),
  label: "indirectpolar1",
)

If the syllable after *nu-* has primary or secondary stress, then the clitic must harmonize (eg #LL[nù-kùng], not #LL[\*nu-kùng])

==== #THEX
#LL[nu-] being attached as a prefixed clitic to the first word of the sentence conveniently places it in the exact spot we would expect an item of category C; its use as a complementizer for indirect questions only strengthens this idea. @indirectpolar1 can be easily modeled by the following syntax tree:

#image("../res/indirectquestion.png", width: 65%)

Which is licensed by PSRs as follows:

#PSR(2, 3)[C][I][#UPDOWN][#UPDOWN][#xhead][#intarg]

#PSR(2, 3)[V][C][#UPDOWN][#UPDOWNARG[xcomp]][#xhead][#intarg]

As we shall see in the section on other complement subordinate clauses, such as indirect quotes, these PSRs are general enough to apply to them as well.

=== Content questions
#cite(<payne_describing_1997>, form: "prose", supplement: [p. 299]) defines content questions as "Questions that expect a more elaborate response than simply an affirmation or disaffirmation." In other words, content questions denotationally elicit specific types of information, such as "who" or "what" or "how." They may often be responded with full sentences.

== Motion
- Default verb go/come unmarked for direction (cannot stand alone, requires PP or here/there adverb)
- Otherwise, manner in main verb and direction in PP

== Possession
=== Attributive possession
Assuming that alienable and inalienable possession is in fact "a purely lexical classification of nouns" #cite(<wals-alienable-possession>, supplement: [§3]), we can posit the existence of three classes of possessed nouns based on their behavior when serving as objects:
+ Those which behave in the normal attributive possession construction when serving as patients
+ Those which exhibit ditransitive-like behavior
+ Those which participate in types I and II of the noun incorporation system.

=== Predicative possession

== Subordinate clauses

=== Indirect speech
Complementizer #LL[ro-]

#numbered-example((
  source: ([Èbèr], [kèbèrà], [ro=kung], [kèjèbùnà], [wofu]),
  morphemes: (
    [Èbèr],
    [say.#npst.#real],
    [that=woman],
    [gather.#npst.#real],
    [sawdust],
  ),
  translation: [Èbèr says the woman is gathering the sawdust.],
  //  label: "indirectpolar1"
))
