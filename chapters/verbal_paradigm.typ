#import "../my-abbreviations.typ": *
#import "@preview/leipzig-glossing:0.5.0": *

= Morphology <morphology>

== Verbal paradigm <v-paradigm>

Verbs are marked inflectionally for tense, aspect, mood, and polarity. Additionally, as mentioned previously, verbs may incorporate their objects into their internal structure. Thus, the internal structure of a Proto-Lisian verb may be analyzed with the following slots

[Tense][Aspect][Root][Incorporated Noun][Mood thematic vowel][Polarity]



=== Tense
- #pst is default
- #npst (#LL[k-] with reduplicated vowel, except if starts with vowel in which case )

==== #THEX
Using intervals, we will assume globally available UT (utterance time) and ET (the time of the relayed event.)

$#TEMPL[\@PST] (P) colon.eq
lambda P exists e.P(e) and op("before")("ET","UT") colon #UPSIGMA → #UPSIGMA$

=== Aspect
- #pfv (with a slight hint of culminative): Reduplication of first consonant with -#phonemic[U]
=== Mood
- Thematic vowel #phonemic[I] or #phonemic[A], lexically determined. Default is #real, flipped is #irr.

Proto-Lisian distinguishes two moods: the *realis* (#real) and *irrealis* (#irr). I will refrain from offering any semantic interpretation for these moods here; these are better understood in the syntactic and discourse contexts which trigger them (see above).

The marker for mood is a vowel specified by the root, which can be either #phonemic[I] or #phonemic[A]. These are called the *thematic vowels*. The vowel a particular root associated with the realis mood is considered unmarked; this vowel can be called the root's thematic vowel. Marking the irrealis case is as simple as substituting the thematic vowel to the opposite; i.e. #phonemic[I] to #phonemic[A] or #phonemic[A] to #phonemic[I].

=== Polarity
- #neg (#LL[-jA])
