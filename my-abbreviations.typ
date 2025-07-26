#import "@preview/leipzig-glossing:0.5.0": *
#import abbreviations: *
#import "Conlang Template.typ": *

// Misc abbreviations
#let THEX = [Theoretical analysis]

// Abbreviations for leipzig glossing.  
#let cop = emit-abbreviation("COP") // Copula
#let aff = emit-abbreviation("AFF")
#let real = emit-abbreviation("REAL")
#let npst = emit-abbreviation("NPST")
#let transl = emit-abbreviation("TRANSL") //Translative
#let q = emit-abbreviation("Q")

// Abbreviations for annotated phrase structure rules
#let UP = [↑]
#let DOWN = [↓]
#let UPDOWN = [#UP = #DOWN]
#let UPSIGMA = [#UP#sub[σ]]
#let DOWNSIGMA = [#DOWN#sub[σ]]



#let MOTHER = [#math.accent(sym.ast.basic, sym.hat)]
#let MOTHERL = [#MOTHER#sub[λ]]


// Templates
#let TEMPL(arg) = [#smallcaps[#arg]]
#let xhead = [#TEMPL[\@xhead]]
#let intarg = [#TEMPL[\@int]]
#let extarg = [#TEMPL[\@ext]]
#let FEAT(feature) = [#smallcaps[#feature]] // For the feature attribute in an attribute-value pair.
#let VAL(value) = [#smallcaps[#value]] // For the feature attribute in an attribute-value pair.
#let objtheta = [#FEAT[obj#sub[θ]]]
#let obltheta = [#FEAT[obl#sub[θ]]]
#let UPARG(arg) = [#UP #FEAT[#arg]]
#let UPDOWNARG(arg) = [(#UPARG(arg)) = #DOWN]
#let updownsubj = [#UPDOWNARG[subj]]
#let UPARGSIGMA(arg) = [(#UPARG[#arg])#sub[σ]]

// Minimal Phrase Structure phrase structure rules
#let undersize = 0.65em
#let PSR(a,b, ..args) = [
  [#box(baseline: 75%)[
    #grid(
      columns: a, 
      rows: b,
      gutter: 5pt,
      align: center,
      ..args
    )
    ]
  ]
]

// Glue semantics formatting
#let lam(expression) = [
  $#expression$
]
#let glue(expression) = [
  $#expression$
]
#let m_constructor(meaning,logic) = [
  #lam(meaning) : #glue(logic)
]