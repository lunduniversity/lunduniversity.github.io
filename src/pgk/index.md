<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
  function loadContent(uri, elementId) {
    $(elementId).load(uri, function(responseText, textStatus, jqXHR) {
      if (textStatus !== 'success') {
        $(elementId).html(`<p>Kunde inte ladda innehåll från <a href="${uri}">${uri}</a>.</p>`);
      }
    });
  }
</script>

## Om kursen

**Poäng**: 10,5 hp.  
**Period**: HT1-2 (lp1-2).  
**Kursplan**: [EDAB05](https://kurser.lth.se/kursplaner/senaste/EDAB05.html).  
**Kursansvarig**: [Björn Regnell](../bjornregnell)  
**Biträdande kursansvarig**:
[Mattias Nordahl](https://cs.lth.se/nordahl-mattias/)

Kursen omfattar grundläggande programmeringsprinciper och datavetenskapliga begrepp. Du lär dig programmeringsspråket [Scala](https://www.scala-lang.org/), att konstruera algoritmer, att använda datastrukturer, programmeringsverktyg och mycket annat. Det krävs inga förkunskaper i programmering. Kursen ger en solid grund för fortsatta studier i systemutveckling.

Kursen har två delar: en för programmering (prog) och en för datorer och
datoranvändning (dod). Programmering pågår varje vecka genom hela
kursen, medan datorer och datoranvändning endast pågår under de fyra första veckorna. 

## Länkar

- [Schema TimeEdit](https://cloud.timeedit.net/lu/web/lth1/ri19566250000YQQ28Z0507007y9Y4763gQ0g5X6Y65ZQ176.html)
- Kurskompendium:
  - [Kurskompendium Programmering hela kursen](https://fileadmin.cs.lth.se/pgk/compendium.pdf)  (ca 730 sidor, anpassad för skärm)
  - [Kurskompendium Programmering end. lp1](https://fileadmin.cs.lth.se/pgk/compendium1.pdf) (ca 380 sidor, anpassad för papper)
  - [Kurskompendium Programmering end. lp2](https://fileadmin.cs.lth.se/pgk/compendium2.pdf) (ca 380 sidor, anpassad för papper)
  - [Öppen källkod för Kompendium Programmering](http://github.com/lunduniversity/introprog)
  - [Kompendium Datorer och datoranvändning](https://fileadmin.cs.lth.se/cs/Education/EDAA60/labs/dodlabs.pdf)
- [Snabbreferens](https://fileadmin.cs.lth.se/pgk/quickref.pdf)
- Kodbibliotek `introprog-scalalib`:
  - [github.com/lunduniversity/introprog-scalalib](http://github.com/lunduniversity/introprog-scalalib)
  - [Api-dokumentation `introprog-scalalib`](https://fileadmin.cs.lth.se/pgk/api)
- Lärplattform:
  - [Kursyta i Canvas](TODO) (end. åtkomlig för registrerade studenter)
  - [Permanent öppen information i Canvas](https://canvas.education.lu.se/courses/35559)
- [Ladok Login för studenter](https://www.student.ladok.se/student/app/studentwebb/)
- [Formell kursplan](https://kurser.lth.se/kursplaner/senaste/EDAB05.html)
- [Översiktligt kursprogram](https://fileadmin.cs.lth.se/pgk/courseplan.pdf)


## Programmering (prog)

### Översikt (prog)

<script type="text/javascript">
  $(function(){
    const uri = 'resources/week-plan-generated.html';
    loadContent(uri, '#week-plan-generated');
  });
</script>
<div id="week-plan-generated"></div>


### Föreläsningar (prog)


* Föreläsningsbilder (prog):
  - Ladda ner föreläsningar per vecka:
    [https://fileadmin.cs.lth.se/pgk/lect-w01.pdf](https://fileadmin.cs.lth.se/pgk/lect-w01.pdf)
    (byt `w01` mot önskad vecka) eller klicka på länk i tabellen nedan.
  - Ladda ner alla föreläsningar:
    [https://cs.lth.se/pgk/allslides](https://cs.lth.se/pgk/allslides)
  - Bilder med **rosa** bakgrund innehåller praktisk information som inte finns i
    [kompendiet](https://cs.lth.se/pgk/compendium/).
  - Kompilera veckans bilder direkt från GitHub (byt `w01` mot rätt vecka i adressen, kan låååång tid om omkompilering krävs):
    [`latexonline.cc/compile?git=https://github.com/lunduniversity/introprog&target=slides/lect-w01.tex&command=pdflatex`](https://latexonline.cc/compile?git=https://github.com/lunduniversity/introprog&target=slides/lect-w01.tex&command=pdflatex)
* Inspelade föreläsningar (prog) från tidigare år: [https://cs.lth.se/pgk/youtube](https://cs.lth.se/pgk/youtube) Men det är roligare lajv! Notera att vissa saker har ändrats, så dubbelkolla mot
årets föreläsningsbilder nedan. För att minska övervakning och reklam, använd
webbläsaren [Firefox](https://www.mozilla.org/en-US/firefox/all) med
[uBlock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/).


<script type="text/javascript">
  $(function(){
    const uri = 'resources/module-plan-generated.html';
    loadContent(uri, '#module-plan-generated');
  });
</script>
<div id="module-plan-generated"></div>


### Litteratur (prog)

Kurskompendiet är [öppen källkod](https://github.com/lunduniversity/introprog/) och alla är välkomna att bidra enligt instruktioner i appendix i kompendiet. En tryckt version säljs till självkostnadspris via institutionen efter beställning på första föreläsningen.

* **Kurskompendiet** i pdf: 
  * [båda läsperioderna, anpassad för skärm](https://fileadmin.cs.lth.se/pgk/compendium.pdf)
  * [läsperiod 1, anpassad för A4-papper](https://fileadmin.cs.lth.se/pgk/compendium1.pdf)
  * [läsperiod 2, anpassad för A4-papper](https://fileadmin.cs.lth.se/pgk/compendium2.pdf)
* **Snabbreferens** för Scala i pdf: [anpassad för A5-häfte](https://fileadmin.cs.lth.se/pgk/quickref.pdf) 
* **Föreläsningsbilder** i pdf per vecka kan laddas ner här (byt `w01` mot önskad vecka): 
  * [`fileadmin.cs.lth.se/pgk/lect-w01.pdf`](https://fileadmin.cs.lth.se/pgk/lect-w01.pdf) 

### Dokumentation (prog):
* [Scala-biblioteket `introprog-scalalib`](https://fileadmin.cs.lth.se/pgk/api) med bl.a. [`introprog.PixelWindow`](https://fileadmin.cs.lth.se/pgk/api/introprog/PixelWindow.html)
* [`scala-lang.org`](https://scala-lang.org) Scalas officiella hemsida.
* [`scala-lang.org/api/current`](https://scala-lang.org/api/current/)  dokumentation av standarbiblioteket i Scala 3.
* [`docs.scala-lang.org/`](https://docs.scala-lang.org/) den officiella platsen för handledning om Scala 3.
* [Visual Scala reference](https://superruzafa.github.io/visual-scala-reference/) med illustrationer av metoderna i Scalas standardbibliotek.
* [Java SE JDK dokumentation](https://docs.oracle.com/en/java/javase/21/docs/api/) av standarbiblioteket Java JDK.
* [`docs.oracle.com/javase/tutorial`](https://docs.oracle.com/javase/tutorial/) den officiella platsen för handledning om Java.

### Examination (prog)

- TODO: flytta [denna sida](https://cs.lth.se/pgk/examination/) hit

### Extra bredvidläsning

Kurskompendiet, som är fritt att ladda ner, definierar kursens innehåll och ordningen på materialet. Om du vill ha kompletterande kursmaterial som extra bredvidläsning rekommenderas nedan böcker. De finns tillgängliga via nätbokhandlare, t.ex. AdLibris. Tips om fler böcker finns här [docs.scala-lang.org/books.html](https://docs.scala-lang.org/books.html)

* Bredvidläsning för nybörjare: 
  * **Introduction to Programming and Problem-Solving Using Scala, [Second Edition](https://www.adlibris.com/se/bok/introduction-to-programming-and-problem-solving-using-scala-9781498730952)**, *Mark C. Lewis, Lisa Lacher* (2016). Denna bok täcker stora delar av kursen, men innehåller även en del material som ingår i senare LTH-kurser. Ordningen är ganska annorlunda, men det går bra att läsa boken i en annan ordning än den är skriven, men du får själv anpassa din läsning av denna bok efter pgk-kursens progression.

* Bredvidläsning för dig som redan programmerat en hel del i ett objektorienterat språk t.ex. Java el. C#: 
  * **Programming in Scala, [Fifth edition](https://www.artima.com/shop/programming_in_scala_5ed)**, Martin Odersky, Lex Spoon, and Bill Venners (2021). Martin Odersky är upphovspersonen bakom Scala och denna välskrivna bok innehåller en komplett genomgång av Scala-språket med många exempel och tips. ''Fifth Edition'' täcker senaste versionen av Scala, version 3. Boken riktar sig till de som redan har kunskap om något objektorienterat språk, t.ex. Java. Boken följer inte kursens upplägg men det finns ett bra index som gör det lätt att anpassa din läsning efter kursens progression. Boken innehåller en hel del material som är på en mer avancerad nivå än pgk-kursen, men du kommer att ha stor nytta av innehållet i kommande kurser och när du fördjupar dig i Scala.

## Datorer och datoranvändning (dod)

I denna del lär du dig några viktiga programmeringsverktyg som används i professionell systemutveckling. Dod omfattar 4 föreläsningar och 4 laborationer och går under kursens första 4 veckor. När du är godkänd på laborationerna får du 3hp  som delresultat i Ladok. 

### Operativsystem (dod)

* **Läsning**: 
  * [Scalakompendium (Appendix B)](https://fileadmin.cs.lth.se/pgk/compendium.pdf)
  * [Linuxkompendium](http://fileadmin.cs.lth.se/cs/Education/EDAA60/general/unix-x.pdf) 

* **Föreläsningsbilder**: 
  * [PDF Kursintro](https://fileadmin.cs.lth.se/cs/Education/EDAA60/lectures/2024/lecture0-intro-handout.pdf)
  * [PDF Unix](https://fileadmin.cs.lth.se/cs/Education/EDAA60/lectures/2024/lecture1-unix-handout.pdf)
  * [PDF Menti](https://fileadmin.cs.lth.se/cs/Education/EDAA60/lectures/2024/lecture1-menti.pdf)

* **Mera intressant**:
  * [Wikipedia Linux](http://en.wikipedia.org/wiki/Linux)
  * [Wikipedia Unix](http://en.wikipedia.org/wiki/Unix)
  * [Bash cheat sheet](https://github.com/RehanSaeed/Bash-Cheat-Sheet)

* **Lab**: [TODO LINK](TODO)

### Versionshantering (dod)
<ul>
  <li>
    <strong>Läsning:</strong>
    <a
      href="https://fileadmin.cs.lth.se/pgk/compendium.pdf"
      target="_blank"
      >Scalakompendium (Appendix G)</a
    >,
    <a
      href="https://www.youtube.com/playlist?list=PLRqwX-V7Uu6ZF9C0YMKuns9sLDzK6zoiV"
      target="_blank"
      >Git and GitHub for Poets (YouTube)</a
    >,
    <a href="https://git-scm.com/book/en/v2" target="_blank"
      >Pro Git (Chacon/Staub)</a
    >
  </li>
  <li>
    <strong>Föreläsningsbilder:</strong>
    <a
      href="https://fileadmin.cs.lth.se/cs/Education/EDAA60/lectures/2024/lecture-git-handout.pdf"
      target="_blank"
      >PDF, git</a
    >
  </li>
  <li>
    <strong>Mera intressant:</strong>
    <ul>
      <li>
        <a href="https://git-scm.com" target="_blank"
          >Git (git-scm.com)</a
        >
      </li>
      <li>
        Git cheat sheets:
        <ul>
          <li>
            <a
              href="https://education.github.com/git-cheat-sheet-education.pdf"
              target="_blank"
              >GitHub</a
            >
          </li>
          <li>
            <a
              href="https://about.gitlab.com/images/press/git-cheat-sheet.pdf"
              target="_blank"
              >GitLab</a
            >
          </li>
          <li>
            <a
              href="https://www.atlassian.com/git/tutorials/atlassian-git-cheatsheet"
              target="_blank"
              >BitBucket</a
            >
          </li>
        </ul>
      </li>
      <li>
        <a
          href="https://fileadmin.cs.lth.se/cs/Education/EDAA60/lectures/2023/EDAF45-lab0-git-basics-v1.1.pdf"
          target="_blank"
          >EDAF45 Lab 0</a
        >
      </li>
    </ul>
  </li>
</ul>


### Typsättning (dod)

### Maskinkod (dod)

<!--

| Vecka         | Förel     | Lab |
|--------------|-----------|------------|
| W01 | [Operativsystem](fileadmin/TODO)   | [`linux`](fileadmin/TODO)        |
| W02 | [Versionshantering]()      | `git`        |
| W03 | Typsättning      | `latex`        |
| W04 | Maskinkod      | `c3pu`        |

<script type="text/javascript">
  $(function(){
    const uri = 'resources/dod-lectures.html';
    loadContent(uri, '#dod-lectures');
  });
</script>
<div id="dod-lectures"></div>

-->

## Installera programmeringsverktyg 

I filen [`tools.md`](https://github.com/lunduniversity/introprog/blob/master/web/tools/tools.md) finns instruktioner om programmeringsverktyg som finns på LTH:s studentdatorer, och hur du installerar dessa verktyg på din egen dator för olika operativsystem. Här finns också tips när du ska [köpa egen dator](https://github.com/lunduniversity/introprog/blob/master/web/tools/tools.md#k%C3%B6pa-egen-dator).

* [github.com/lunduniversity/introprog/blob/master/web/tools/tools.md](https://github.com/lunduniversity/introprog/blob/master/web/tools/tools.md)

## Koda online

* Du kan skapa och köra Scala-program direkt i din webbläsare här: 
  * [scastie.scala-lang.org](https://scastie.scala-lang.org/kXwW4wXzQYaKpmyNtjXp4w)

* Du kan skapa Scala-program som ritar med hjälp av en sköldpaddan här: 
  * [kojo.lu.se](http://kojo.lu.se/)


## Ordlista

* I tabellen nedan finns de programmeringsbegrepp som används i quiz-övningarna i kompendiet. Försök först att lösa quiz-övningarna baserat på dina studier av förklaringar av veckans begrepp i kompendiet, *innan* du kollar här.
* Du kan också träna på begrepp med hjälp av [muntabot](https://fileadmin.cs.lth.se/pgk/muntabot/#muntabot)

<script type="text/javascript">
  $(function(){
    const uri = 'resources/concepts-generated.html';
    loadContent(uri, '#concepts-generated');
  });
</script>
<div id="concepts-generated"></div>

