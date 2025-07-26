// --- PERSONAL MACROS DEFINITION ---
#let LL(conlang_text) = emph(conlang_text)// Formats conlang text in italics.
#let E(english_text) = text()["#english_text"]
 // Formats English text in quotes.
#let lexample(conlang_text, english_text) = text()[#emph(conlang_text) "#english_text"]
#let phonetic(phones) = text()[\[#phones\]]
#let phonemic(phonemes) = text()[/#phonemes/]
#let graphemic(graphemes) = text()[\<#graphemes\>]

// TEMPLATE DEFINITION
#let conf(
  doc,
  title: "{Title}", 
  author: "{Author}", 
  subtitle: "{Subtitle}"
) = {
set page(
  paper: "us-letter", 
)
set text(
  font: "Noto Sans", 
  size: 13pt, 
  ligatures: true,
  top-edge: 0.7em,
  bottom-edge: -0.3em
)
set par(
  leading: 0.5em
)
set heading(numbering: "1.1")

// Chapter headings
show heading.where(level: 1): it => [
  #pagebreak()
  #set align(center)
//  #counter(heading).step(level: 1)
  
  #rect(width: 95%, height: auto, stroke: none)[

    // Heading prefix
    #set align(center)
    #text(size: 20pt, color.rgb(20%, 25%, 40%))[
      Chapter #context{counter(heading).display()}
    ] 

    // Name of chapter
    #text(size: 24pt)[#it.body]
  ]
]

// Section headings
show heading.where(level: 2): it => [
//  #counter(heading).step(level: 2)
  
  // Heading prefix
  #text(size: 16pt, color.rgb(20%, 45%, 30%))[
    #linebreak()
    Section #context{counter(heading).display()}
  ]
  // Name of section
  #text(size: 20pt)[#it.body]#linebreak()
]

// Subsection headings
show heading.where(level: 3): it => [
//  #counter(heading).step(level: 3)
  
  // Heading prefix
  #linebreak()
  #context{counter(heading).display()}
  // Name of section
  #text(size: 16pt)[#it.body]#linebreak()
]

// Makes tables lose rules and frames by default, as in LaTeX.
show table: it => [
  #set table(
    stroke: 0pt,
  )
  
  #it
]

// Cover page
set page(fill: color.rgb(145, 0, 140))
counter(page).update(0)
block(width:100%, height:100%)[
  #set align(center)
  #set text(weight: "bold")

  // Title and subtitle
  #text(size: 50pt, font: "Noto Serif")[#smallcaps(title)] \
  #text(style: "italic")[#subtitle] \

  // Language creation society logo.
  #align(horizon)[#box(width: 100%, height: 40%, image("res/cover.png"))]

  // Author name.
  #align(bottom)[#text(font: "Noto Serif")[#author]]
]
pagebreak()

// Sets page color to off-white for content.
// Makes header according to template.
set page(fill: color.rgb(100%,99%,95%),
//    header: [
//        #set text(8pt)
//        #set align(center)
//        #counter(page).display()
//  ],
    footer: [
      #set text(8pt)
      #author
      #h(1fr)
      #context[#counter(page).display()]
      #h(1fr)
      #title
  ]
)

doc
}