#import "../my-abbreviations.typ": *


== Predicate nominals
Using #cite(<payne_describing_1997>, form: "prose", supplement: [Ch. 6])'s typology of which predicates can be called "predicate nominals", Proto-Lisian has two words which express the whole range of semantics he describes, namely: equative, proper inclusion, locative, predicate adjective, existential, and predicate possessives, those being #LL[làrà] and #LL[gìà].

These words are in complementary distribution. #LL[làrà] exclusively appears in present-tense predicates, in sentences like:
#numbered-example(
  (
    source: ([eko], [làrà], [wèrà]),
    morphemes: ([Eko], [be.#prs], [queen]),
    translation: [Eko is a queen.],
  ),
  label: "ekoqueen1",
)
While #LL[gìà] exclusively appears in past-tense predicates, like:
#numbered-example(
  (
    source: ([gìà], [màl]),
    morphemes: ([be.#pst], [person]),
    translation: [There was a person.],
  ),
)

Predicates with #LL[làrà] or #LL[gìà] are negated with the word #LL[mi] #phonetic[ˈmi] placed immediately before, as in
#numbered-example((
  source: ([wa], [mi], [làrà], [ìf]),
  morphemes: ([1#sg], [#neg], [be.#prs], [man]),
  translation: [I am not a man.],
))

We shall now explore the constructions with these copulae in turn.

=== Existence
Perhaps the simplest predicate is one of existence, admitting only one argument, as in the sentence demonstrated previously, here repeated:
#numbered-example(
  (
    source: ([gìà], [màl]),
    morphemes: ([be.#pst], [person]),
    translation: [There was a person.],
  ),
  label: "existence-focus",
)

We observe also sentences such as
#numbered-example(
  (
    source: ([Ira], [làrà]),
    morphemes: ([Ira], [be.#prs]),
    translation: [Ira exists.],
  ),
  label: "existence-topic",
)

Sentences @existence-focus and @existence-topic display a variation in word order. This variation is in fact conditioned by information structure. As the translations suggests, sentences of the structure in sentence @existence-topic predicate the existence of an entity which is given in the Common Ground, which could be interpreted as the topic. In contrast, sentences like @existence-focus are interpreted as introducing new information: the existence of an entity not in the Common Ground. In other words, the predicate nominal is focused.

From the topic-elision phenomenon described previously, if the argument in @existence-topic is in fact the topic, we should expect it to be able to be elided, leaving the bare copula as the only phonemic realized item. This is precisely what we observe. In response to a question like #lexample[Nu-Lis làrà?][Does Lis exist?], assuming Lis to be some sort of supernatural entity, someone can say:
@existence-topic-bare:
#numbered-example(
  (
    source: ([làrà],),
    morphemes: ([be.#prs],),
    translation: [(He does) exist.],
  ),
  label: "existence-topic-bare",
)

@existence-topic-bare is often interpreted as contrastive focus on the existence predication; in other words, it highlights that one of the alternatives (Lis existing) is true (instead of not existing).

As for @existence-focus, it is telling that the argument and the copula switch places under information focus, similar to how verbs and their subjects switch places under focus. For reasons of deeper syntactic analysis, I propose that these are instances of the same phenomenon. If this is the case, sentences like @existence-topic are unmarked (rarer though they may be due to the semantics), and sentences like @existence-focus are marked.

=== Equative and proper inclusion
#cite(<payne_describing_1997>, form: "prose", supplement: [p. 114]) defines defines proper inclusion as "when a specific entity is asserted to be among the class of items specified in the nominal predicate", and
equative clauses as "those which assert that a particular entity
(the subject of the clause) is identical to the entity specified in the predicate
nominal."

@ekoqueen1, repeated in @ekoqueen2, shows us an example of proper inclusion, while the complementary @ekoqueen3 shows an equative clause.

#numbered-example(
  (
    source: ([eko], [làrà], [wèrà]),
    morphemes: ([Eko], [be.#prs], [queen]),
    translation: [Eko is a queen.],
  ),
  label: "ekoqueen2",
)
#numbered-example(
  (
    source: ([wèrà], [làrà], [Eko]),
    morphemes: ([queen], [be.#prs], [Eko]),
    translation: [The queen is Eko.],
  ),
  label: "ekoqueen3",
)

/* Additionally, we observe a sentence such as the following:
#numbered-example(
  source: ([kùng], [wèrà], [làra]),
  morphemes: ([woman], [queen], [be.#prs]),
  translation: ([The woman is the queen.]),
  label: "womanqueen",
) */

==== #THEX

@ekoqueen2 and @ekoqueen3 allow us to propose the following phrase structure rules:

#PSR(2, 3)[N][I][#updownsubj][#UPDOWN][#extarg][#xhead]

#PSR(2, 3)[I][N][#UPDOWN][#UPDOWN][#xhead][#intarg]

/* On the other hand, @womanqueen seem to require the following phrase structure rules:

#PSR(2,3)[N][I][#UPDOWN][#UPDOWN][\@EXT][\@XHEAD]

#PSR(2,3)[N][I][#UPDOWNARG[SUBJ]][#UPDOWN][\@EXT][\@XHEAD][(#DOWN#sub[σ] DF) = TOPIC] */

These PSRs result in the exact same c-structure and f-structure, which properly reflects the syntactic equivalence between the sentences. However, on the semantics, what allows us to conclude @ekoqueen2 is proper inclusive, while @ekoqueen3 is equative, is a close observation of information structure. #cite(<payne_describing_1997>, form: "prose", supplement: [p. 114]) keenly observes that, in proper inclusion, "Usually the subject \[...\] is specific, and the nominal predicate is non-specific," and this observation helps determine the interpretation of proper inclusion vs equative clauses, as they are otherwise syntactically identical.

Given that Proto-Lisian is topic-fronting, speakers interpret the first element in this copular construction as more given than the latter; i.e., higher in the givenness hierarchy. However, if there is reason to conclude the latter element is higher in the givenness hierarchy, then equation is the only reasonable interpretation.

In @ekoqueen3, #LL[Eko], being a proper noun, is assumed to be #VAL[familiar], while #LL[wèrà], is, at most, #VAL[referential]. In contrast, in @ekoqueen2, #LL[Eko] is still assumed to be #VAL[familiar]; however, since #LL[wèrà] is syntactically lower marked for givenness, it is assumed to merely be #VAL[type identifiable]; in other words, #LL[wèrà] is a type set which #LL[Eko] is a proper element of.

However, we must also ensure the formalism correctly identifies when both arguments are #VAL[type identifiable], as in #E[A rose is a flower], for which we will propose the following template:#footnote[Current limitations in Typst, the software used to prepare this document, make it hard to typeset small capitals in math contexts, so all attributes and values show up as lowercase. Forgive any confusion.]

$
  #TEMPL[\@eqtyp] colon.eq
  ( \
    ((#UPARG[#FEAT[subj]])σ #FEAT[giv]) = #UPSIGMA #FEAT[giv] and \
    #UPSIGMA #FEAT[giv] = #VAL[type identifiable]
    \ )
$

In terms of Glue semantics, the proper inclusion reading could be modeled as follows:
$
  #TEMPL[\@propincl] colon.eq
  ((#UPARG[#FEAT[subj]])#sub[σ] #VAL[giv]) gt (#UPSIGMA #VAL[giv]) and (#TEMPL[\@eqtyp])\
  arrow.r.double \ // Implies
  lambda x lambda y lambda e. "hold-state"(e, x in y)
  : (#UPARG[#FEAT[subj]])#sub[σ] multimap (#UPARG[#FEAT[pred]])#sub[σ] multimap #UPSIGMA
$

While the equative reading has the meaning:
$
  #text[#TEMPL[\@eqtyp]] colon.eq ((#UPARG[#FEAT[subj]])#sub[σ] #VAL[giv]) lt.eq (#UPSIGMA #VAL[giv]) and
  not (#TEMPL[\@eqtyp]) \
  arrow.r.double \
  lambda x lambda y lambda e . op("hold-state") (e, x = y) : (#UPARG[#FEAT[subj]])#sub[σ] multimap (#UPARG[#FEAT[pred]])#sub[σ] multimap #UPSIGMA
$

Since we adopt event semantics, we must introduce an event variable that other semantic elements (like tense) can interact with. For this purpose, we represent the relation as "holding" or remaining true during the "event" $e$ of being.

These meaning constructors will be selected by the lexicon based on the information structure givenness hierarchy relation between the two arguments. @ekoqueen2 can then be described the following lexical entries:

#grid(
  columns: 3,
  rows: auto,
  gutter: 0.75em,
  [Eko], [N], [(#UPARG[#FEAT[pred]]) = 'Eko'],
  [], [], [(#DOWNSIGMA #FEAT[df]) = #VAL[topic]],
  [], [], [(#DOWNSIGMA #FEAT[giv]) = #VAL[familiar]],
  [],
  [],
  [$["Eko" : #UP#sub[σ]] in (#UPSIGMA#sub[ι] (#UPSIGMA #FEAT[df])) and (#UPSIGMA#sub[ι] (#UPSIGMA #FEAT[giv]))$],
)

#grid(
  columns: 3,
  rows: auto,
  gutter: 0.75em,
  [wèrà], [N], [(#UPARG[#FEAT[pred]]) = 'queen'],
  [], [], [(#DOWNSIGMA #FEAT[df]) = #VAL[focus]],
  [], [], [(#DOWNSIGMA #FEAT[giv]) = #VAL[type identifiable]],
  [],
  [],
  [$["QUEENS" : #UPSIGMA] in (#UPSIGMA#sub[ι] (#UPSIGMA #FEAT[df])) and (#UPSIGMA#sub[ι] (#UPSIGMA #FEAT[giv]))$],
)

#grid(
  columns: 3,
  rows: auto,
  gutter: 0.75em,
  [làrà], [I], [(#UPARG[#FEAT[t]]) = #prs],
  [], [], [${#TEMPL[\@propincl] | #TEMPL[\@eqtv]}$],
)

=== Locative
Location & direction through verbs "come/go", #lexample[ning][sit] (#loc), #lexample[uri][cross] (#transl).

#numbered-example(
  source: ([Eko], [làrà], [ning owu], [tòb]),
  morphemes: ([Eko], [be.#prs], [#loc.\in], [house]),
  translation: [Eko is in the house],
)

- #lexample[owu][in]
- #lexample[nung][front]
- #lexample[atu][on (top)]
- #lexample[gàbù][bottom]
- #lexample[mèk][behind]
- #lexample[(ground)][below]
- #lexample[(sky)][above]

Notes: Inspired by Akhvakh

=== #THEX
We'll represent the copula by the category I, assuming that the predication is the predicated noun/adjective/locative and the copula only supplies functional information (namely, tense, aspect, mood, and polarity).

This suggests the following phrase structure rules:

#PSR(
  2,
  4,
)[N][I][#UPARG[#FEAT[subj]] = #DOWN][#UPDOWN][#extarg][#xhead][(#UPSIGMA #FEAT[df]\) = #VAL[topic]]

#PSR(2, 3)[I][N][#UPDOWN][#UPDOWN][#xhead][#intarg]

#PSR(2, 3)[I][{N | A | PP}][#UPDOWN][#UPDOWN][#xhead][#intarg]

=== Predicate adjectives <pred-adj>

// FUCK
/* Since these words do not bear much semantic weight, if any, and share with verbs only marking for tense and polarity, and do not seem to be derived from any root, we are led to conclude that #LL[làrà], #LL[gìà] #LL[mi làrà] and #LL[mi gìà] are simply the phonological realizations of a predicate's \[#sym.plus.minus#aff #sym.plus.minus#pst\] in the absence of a lexical item.

This has interesting implications for the clause syntax. If these words are phonological realizations of a clause's tense and polarity, where do these features originate in the clause? The only lexical items present are the noun (phrase)s, adjective (phrases) and locatives being predicated. However, these cannot be the source of the features; at least, it is clear they are not lexically specified.

We are thus led to propose that every sentence generates with at least three elements: a noun (N), which is a lexical item, a tense (T) value, and a polarity (Pol) value, the latter not being independently phonologically realized.

As for structure, it is clear polarity and tense form a constituent. For one, the noun itself must be a constituent. For another, under current assumptions, Pol and T can be replaced by a V. As for which is the head, we observe that the realized element which is marked for negative polarity (#LL[mi]) is expressed in either past or nonpast tenses, and it is placed before the element (#LL[làrà] or #LL[gìà]) which varies for tense. Furthermore, as stated in the introduction, I assume #cite(<boskovic_what_2007>, form: "prose")'s hypothesis that languages which lack articles lack tense phrases (TPs).

As for which of Pol' and N is the head, for now it suffices to assume the generalization that Proto-Lisian is head initial to propose the head is Pol'. This, combined with the observation that when V and NP Merge, V is the constituent which projects, prepares the space for a richer, fuller analysis of the clause.

The barest minimum sentence, then, looks like this:

#figure(image("minimal-sentence.svg", width: 30%, ),caption: [Proto-Lisian Minimal sentence])

this structure is obviously wrong if the predicated nominal is the theme */
