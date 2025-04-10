#let course = [ENGR& 204: Electrical Circuits]
#let doc    = [Syllabus]
////////////////////////////////////////////////////////////////////////////////////////////////////
#set page(
  paper: "us-letter",
  margin: (top: auto, rest: 0.75in),
  numbering: "1",
  header: [#course #h(1fr) #doc #line(length: 100%)]
)
#set par(justify: true, leading: 0.75em)
#set text(font: "New Computer Modern")

#set enum(numbering: "1.a")

#show link: set text(fill: blue, style: "italic")
#show link: lnk => underline(lnk)
////////////////////////////////////////////////////////////////////////////////////////////////////

// title
#align(center)[= #course #doc]

// double lines
#line(length: 100%)
#v(-10pt)
#line(length: 100%)

#columns(2, [
  // instructor
  #align(center, [== Instructor])
  - Name: Nathan Chapman
  - Email: #link("mailto:NChapman@whatcom.edu")[`NChapman@whatcom.edu`]
  // - Phone: N/A
  - Office: Kulshan 210
  - Office Hours:
    - Mon: Math Center #h(1fr) (LRN 340) 12pm-1pm
    - Wed: Engr Lounge #h(1fr) (CAS 113) 12pm-1pm

  #colbreak()
  // class
  #align(center, [== Class])
  - Begin & End: 04/08/25 -- 06/20/25
  - Location: Cascade 113
  - Meeting: MW 1:30 pm -- 5:00 pm
  - Credit Hours: 6 (5.00 lecture 1.00 lab)
  - Prerequisites: PHYS& 223 with a minimum grade of C or better
  - Co-requisites: MATH& 152 with a minimum grade of C or better
])

== Course Description

Analysis of mathematical models of electric components and circuits. Topics include sources, resistors, capacitors, inductors, operational amplifiers, transient response, sinusoidal steady-state response, and three-phase circuits. Laboratory introduces electrical instrumentation and design applications of electrical circuit concepts.

== Course Outcomes

Upon successful completion of this course, each student should be able to:

    - Perform power analysis calculations for single and three-phase sinusoidal circuits.
    - Design, build, and test electrical instrumentation and control systems.
    - Perform basic circuit analysis using computer-based tools such as PSPICE, TINA, LTSPICE, or MultiSim. 
    - Apply circuit analysis techniques including Kirchoff's laws, equivalent resistance, superposition, Thevenin and Norton equivalents, Node-voltage method, and Mesh-current method. 
    - Apply mathematical models for basic circuit elements including resistors, sources, capacitors, inductors, and operational amplifiers.
    - Analyze the transient step and natural response of first and second order linear direct current (DC) circuits containing resistors, capacitors, and/or inductors.
    - Analyze the steady-state response of sinusoidal circuits including frequency-selective circuits by applying the concepts of phasor transforms and impedence.
    - Build and troubleshoot electrical circuits as specified in a circuit schematic.

== Required Textbooks & Resources

- *Required:* #link("https://digilent.com/reference/learn/courses/real-analog/start")[Real Analog: Circuits 1 - Digilent Reference] (open-access and available via Canvas)
- *Optional:* Nilsson, J., Riedel, S.. Electric Circuits, 10 ed. Pearson, 2015 , ISBN: 9780133760033.
- *Requried Resources:* Analog Kit provided in class for lab and will be loaned out

#pagebreak()
#align(center, [== Assessment])

#align(center,
columns(2, [
  #table(
    columns: 2,
    [Lab Notebook & Worksheets], [25%],
    [Homework], [25%],
    [Quizzes], [25%],
    [Project Presentations & Reports], [25%]
  )

  #colbreak()

  #table(
    columns: 6,
    []  , []        , [A], [$>93%$]  , [A-], [90 -- 92],
    [B+], [87 -- 89], [B], [83 -- 86], [B-], [80 -- 82],
    [C+], [77 -- 79], [C], [73 -- 76], [C-], [70 -- 72],
    [F], [$< 70$]
  )
])
)

#align(center, [== Course Schedule])
#align(
  center,
  table(
    align: center,
    columns: 4,
    table.header[*Week*][*Chapter*][*Week*][*Chapter*],
    [Week 1], [Ch.1: Circuit Fundamentals],       [Week 6], [Ch 6: Energy Storage Elements],
    [Week 2], [Ch 2: Circuit Reduction],          [Week 7], [Ch 7: First Order Circuits],
    [Week 3], [Ch 3: Nodal & Mesh Analysis],      [Week 8], [Ch 8: Second Order Circuits], 
    [Week 4], [Ch 4: Systems & Network Theorems], [Week 9], [Ch 10: Steady-state Sinusoidal Analysis],
    table.cell(rowspan: 2, [Week 5]), 
    table.cell(rowspan: 2, [
      Ch 5: Operational Amplifiers \
      #v(1em)
      *Midterm Presentations*
    ]), 
    [Week 10], [Ch 11: Frequency Response & Filtering],
    [Week 11], [Ch 12: Steady-state Sinusoidal Power \ *Final Presentations*]
  )
)

== Lab Notebooks & Worksheets

A significant portion of your grade will be based on laboratory exercises, where you will design, build, and test various circuits.  To ensure that you are properly documenting your work and keeping track of your progress, *you must maintain a lab notebook for each laboratory session*.  By maintaining a lab notebook and using worksheets, you will be able to track your progress, reflect on your learning, and communicate your results effectively.

Additionally, while your lab notebook is primarily for recording data and observations during hands-on experiments, the worksheets serve a distinct purpose. They are designed to test your understanding of the underlying principles being demonstrated in each laboratory exercise.  
Worksheets will often ask you to analyze your measurements, explain circuit behavior, or apply theoretical concepts to practical situations. These exercises are meant to be completed during the hands-on activities, allowing you to reflect on what you've learned and how it applies to the physical components you're working with.

Lab notebooks will be collected and graded at each project presentation.

== Homework

Homework assignments are to measure your mastery and understanding of the theoretical principles that underpin the physical phenomena we measure in lab.  Homework is due *Mondays by the start of class* so you can can come to class prepared not only with your understanding in hand, but also your questions.

There are two options for submitting your homework (and all other types of assessments):

- You print and complete the material on a piece of paper.  This could take the form of using the worksheet from the physical workbook or referencing the material from online via a phone, tablet, or laptop but doing the work on your own paper.  These should be scanned to a pdf either by a scanner or by a mobile device via #link("https://www.adobe.com/acrobat/mobile/scanner-app.html")[*Adobe Scan Mobile*].

- You complete your work digitally e.g. on your tablet.

In either case, these should be saved as a pdf and submitted to Canvas.

== Quizzes

Every week will culminate in a (Canvas) quiz that assess not only where you are, but also how far you've come.  They will assess your mastery of both the understanding of theoretical concepts but also the hands-on techniques that go into measure them.  These quizzes are *due Friday by 5pm*.

== Projects
Instead of exams, the culminating experiences for this course will be a group project.  The project will be equal parts writing and presenting.

=== Proposal
Near the middle of the semi-quarter, a proposal must be submitted to the instructor.  This proposal must include, but is not limited to, the main topic, starting references, relevant equations and overall theoretical model.  This submission is to ensure the topic of the project is of appropriate scope.

=== Written
The written document must be prepared in a technical document preparation program.  I recommend Typst; Word or Google documents will *not* be accepted.

=== Presentation
Final presentations will be held during the middle and final weeks of the quarter.

== Student Conduct Expectations
This course includes elements that require not only your physical presence, but also your mental presence. The work we will do in this course is highly technical and collaborative; be prepared to engage with the content and your peers every day.

== Guidelines for Contacting the Instructor
The best way to contact me is via email or in office hours.  I intend to be unavailable outside of conventional working hours, but will otherwise get back to you as soon as I can.  *Note:* If you expect to be unable to come to class for only 1 or 2 meetings, there is no need to let me know.

== Participation
You and your peers learn better if you't both engaged with the content.. As such, participation and group contributions are an integral part to succeeding in this course.

== Core Learning Abilities
WCC's core learning abilities (CLAs) - communicating, information literacy, quantitative reasoning, social justice, and thinking - are overarching skills that are taught and reinforced throughout our curriculum and a student's time at WCC. These skills are integral to students' professional and personal lives. This course will give you the opportunity to practice and develop one or more of these core learning abilities.

== Access and Disability Services
Any student with a disability requiring auxiliary aids, services, or other reasonable accommodations should contact the access and disability
services office in Laidlaw 134 to make an appointment (`ads@whatcom.edu`, 360.383.3139, or 711 relay service for deaf callers). 

== Affirmation of Inclusion
WCC is committed to maintaining an environment in which every member of the College community feels welcome to participate in the life of the  College, free from harassment and discrimination. We welcome people of all races, ethnicity, national origins, religions, ages, genders, sexua orientations, marital status, veteran status, abilities, and disabilities. Toward that end, faculty, students, and staff will treat one another with respect and dignity; promote a learning and working community that ensures social justice, understanding, civility and non-violence in a safe and supportive climate; and influence curriculum, teaching strategies, student services, and personnel practices that facilitate sensitivity and openness to diverse ideas, peoples and cultures in a creative, safe, and collegial environment.

== Non-Discrimination Policy, Title IX, and Sexual Misconduct
WCC does not discriminate based on race, color, national origin, religion, sex, disability, honorably discharged veteran or military status, sexual orientation, genetic information, or age in its programs and activities. WCC's discrimination and harassment policy (615), Title IX [sexual misconduct and harassment] policy (616), and student rights and responsibilities policy (620) strictly prohibit sexual harassment, intimidation, and violence. Anyone who has experienced sexual misconduct is encouraged to contact a WCC counselor (Laidlaw 134, 360.383.3139) to receive confidential support and learn about reporting options. Any disclosure of such misconduct shared with another faculty or staff member is non confidential and requires a report to WCC's Title IX coordinator, who has been designated to handle such reports. Inquiries regarding non- discrimination, Title IX, and sexual misconduct policies can be directed to the Title IX coordinator at 360.383.3400. 

== Accommodations for reasons of faith or conscience
Students who will be absent from course activities due to reasons of faith or conscience may seek reasonable accommodations, so grades are not affected. Such requests must be made to the instructor within the first two weeks of the quarter and should specify the exact dates the student will miss. The instructor and student will then identify the specific reasonable accommodations for the missed class sessions.