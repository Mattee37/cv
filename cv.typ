// Document setup
#set document(
  title: "Mateo Maccarone - CV",
  author: "Mateo Maccarone",
)

#set page(
  paper: "a4",
  margin: (x: 2cm, y: 1cm),
)

#set text(
  font: "New Computer Modern",
  size: 10pt,
)

#set par(justify: true)

// Custom styles
#let accent = rgb("#2563eb")
#let muted = rgb("#64748b")

#let section-title(title) = {
  v(0.6em)
  text(weight: "bold", size: 12pt, fill: accent)[#upper(title)]
  v(-0.4em)
  line(length: 100%, stroke: 0.5pt + accent)
  v(0.3em)
}

#let job(company, role, dates) = {
  grid(
    columns: (1fr, auto),
    align: (left, right),
    text(weight: "bold")[#company] + text(style: "italic")[ — #role],
    text(fill: muted)[#dates]
  )
}

#let education-item(degree, institution, dates) = {
  grid(
    columns: (1fr, auto),
    align: (left, right),
    text(weight: "bold")[#degree] + [ — #institution],
    text(fill: muted)[#dates]
  )
}

// Header
#align(center)[
  #text(size: 24pt, weight: "bold")[Mateo Maccarone]
  #v(-0.3em)
  #text(size: 12pt, style: "italic", fill: muted)[Lead Frontend Developer]
  #v(0.3em)
  #text(size: 9pt)[
    #link("mailto:maccaronemateo.dev@gmail.com")[maccaronemateo.dev\@gmail.com] #h(1em) | #h(1em) Buenos Aires, Argentina
  ]
  #v(0.1em)
  #text(size: 9pt)[
    #link("https://www.linkedin.com/in/mateo-maccarone-a37313211/")[LinkedIn] #h(1em) | #h(1em) #link("https://github.com/Mattee37")[GitHub]
  ]
]

#v(0.8em)

#text(size: 10pt)[
  JavaScript developer with 4+ years of professional experience (10+ years overall) building modern, scalable web applications. Currently leading frontend development at #link("https://www.braintly.com/")[Braintly], where I modernized legacy systems using React, Next.js, and Laravel. Passionate about clean code, open source, performance, and mentoring. Actively expanding my expertise into Vue.js ecosystems.
]

// Technical Skills
#section-title("Technical Skills")

#grid(
  columns: (auto, 1fr),
  column-gutter: 1em,
  row-gutter: 0.5em,
  text(weight: "bold")[Frontend:], [React, Next.js, Astro, Vue, Nuxt, TypeScript],
  text(weight: "bold")[State & Data:], [RPC and REST APIs],
  text(weight: "bold")[Backend:], [Laravel, PostgreSQL],
  text(weight: "bold")[DevOps & Tools:], [Docker, Git, Bun, IA-Agents and MCPs],
  text(weight: "bold")[Leadership:], [Technical ownership, code reviews, agile collaboration, cross-team alignment],
)

// Professional Experience
#section-title("Professional Experience")

#job(link("https://www.braintly.com/")[Braintly], "Frontend Developer", "2021 – Present")
#v(0.3em)

#list(
  marker: [•],
  indent: 0.5em,
  [Led the full migration of a legacy frontend to a modern React + Next.js architecture, significantly improving performance, maintainability, and developer experience.],
  [Built responsive, accessible UIs with a focus on user experience and code quality.],
  [Collaborated with backend engineers on Laravel APIs, ensuring seamless integration and efficient data flow.],
  [Containerized local development environments using Docker to standardize workflows across the team.],
  [Acted as a technical reference for frontend decisions and participated in architectural discussions.],
)

// Additional Experience
#section-title("Additional Experience")

#job("Municipalidad de Tres de Febrero – C.I.T y Empleabilidad", "Web Development Instructor", "2020")
#v(0.3em)

#list(
  marker: [•],
  indent: 0.5em,
  [Designed and delivered introductory web development workshops (HTML, CSS, JavaScript) to promote digital inclusion.],
)

// Education
#section-title("Education")

#education-item("University Technical Degree in Web Development", "UNLaM", "2025 – in progress")
#v(0.2em)
#education-item("Computer Engineering", "UNLaM", "2021 – paused")
#v(0.2em)
#education-item("Computer Science (Secondary)", "Instituto Agustín Elizalde (IAE)", "2014 – 2020")

// Open Source & Interests
#section-title("Open Source & Interests")

#list(
  marker: [•],
  indent: 0.5em,
  [Active on #link("https://github.com/Mattee37")[GitHub] with personal experiments and open-source contributions],
  [Passionate about: *Comics*, *Open Source*, *Led Zeppelin*, and *Thrash Metal* 🤘],
)

// Languages
#section-title("Languages")

#grid(
  columns: (auto, 1fr),
  column-gutter: 1em,
  row-gutter: 0.4em,
  text(weight: "bold")[Spanish:], [Native],
  text(weight: "bold")[English:], [Professional working proficiency],
)
