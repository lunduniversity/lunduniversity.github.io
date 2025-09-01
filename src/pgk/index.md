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
<script>
document.addEventListener("DOMContentLoaded", () => {
  const indicator = document.getElementById("section-indicator");
  const headings = [...document.querySelectorAll("h2, h3")];

  const current = {
    h2: null,
    h3: null,
    h2id: null,
    h3id: null,
  };

  const getHeadingLevel = el => el.tagName.toLowerCase();

  const ensureId = (el) => {
    if (!el.id) {
      el.id = el.textContent.toLowerCase().replace(/\s+/g, '-').replace(/[^\w-]/g, '');
    }
    return el.id;
  };

  const updateIndicator = () => {
    const scrollY = window.scrollY + 100; // lite marginal

    current.h2 = null;
    current.h3 = null;
    current.h2id = null;
    current.h3id = null;

    for (const h of headings) {
      if (scrollY >= h.offsetTop) {
        const level = getHeadingLevel(h);
        const id = ensureId(h);
        if (level === 'h2') {
          current.h2 = h.textContent;
          current.h2id = id;
          current.h3 = null;
          current.h3id = null;
        } else if (level === 'h3') {
          current.h3 = h.textContent;
          current.h3id = id;
        }
      } else {
        break;
      }
    }

    const parts = [];

    // Kursakronym med länk till toppen
    parts.push(`<a href="#top">pgk</a>`);

    if (current.h2 && current.h2id) {
      parts.push(`<a href="#${current.h2id}">${current.h2}</a>`);
    }
    if (current.h3 && current.h3id) {
      parts.push(`<a href="#${current.h3id}">${current.h3}</a>`);
    }

    if (parts.length === 1) {
      indicator.style.display = "none";
    } else {
      indicator.innerHTML = parts.join(" :: ");
      indicator.style.display = "block";
    }
  };

  window.addEventListener("scroll", updateIndicator);
  updateIndicator(); // initialt
});
</script>

<div id="section-indicator" aria-hidden="true">📌 Sektionstitel</div>

<div id="sec_about">
## Om kursen

### Kursfakta

* **Namn**: Programmering, grundkurs (Scala)
* **Poäng**: 10,5 högskolepoäng
* **Period**: höstterminen läsperiod 1 och 2
* **LTH-program**: Obligatorisk för civilingenjörsprogrammen [Infocom (C)](https://kurser.lth.se/lot/programme?programme=C) och [Datateknik (D)](https://kurser.lth.se/lot/programme?programme=D)
* **Kursstart**: Måndagen den 1 september kl 13:15 i [E:A](https://fileadmin.cs.lth.se/cs/Bilder/Salar/EA.pdf)
* **Schema**: [TimeEdit](https://cloud.timeedit.net/lu/web/lth1/ri19566250000YQQ28Z0507007y9Y4763gQ0g5X6Y65ZQ176.html), [Kapten Alloc](https://fileadmin.cs.lth.se/pgk/kaptenalloc/)
* **Kursplan**: [EDAB05-sv](https://kurser.lth.se/kursplaner/senaste/EDAB05.html), [EDAB05-en](https://kurser.lth.se/kursplaner/senaste-en/EDAB05.html)
* **Kompendium**: [fileadmin.cs.lth.se/pgk/compendium.pdf](https://fileadmin.cs.lth.se/pgk/compendium.pdf)
* **Lärplattform** (kräver inloggning): [Kursyta 2025](https://canvas.education.lu.se/courses/37281) [Permanent info](https://canvas.education.lu.se/courses/35559)
* **Kursansv.**: [Björn Regnell](../bjornregnell)  
* **Bitr. kursansv.**: [Mattias Nordahl](https://cs.lth.se/nordahl-mattias/)

### Översikt

Kursen omfattar grundläggande programmeringsprinciper och datavetenskapliga
begrepp. Du lär dig programmeringsspråket [Scala](https://www.scala-lang.org/),
att konstruera algoritmer, att använda datastrukturer, programmeringsverktyg och
mycket annat. Det krävs inga förkunskaper i programmering. Kursen ger en solid
grund för fortsatta studier i systemutveckling.

Kursen har två delar: en för programmering ([*prog*](#programmering-prog)) och en för datorer och
datoranvändning ([*dod*](#datorer-och-datoranvändning-dod)). Prog-delen pågår under alla kursens 14 läsveckor, medan
dod-delen endast pågår under de fyra första veckorna.

Prog-delen gavs för första gången 2016 för D-programmet. Här presenteras den pedagogiska idén samt **erfarenheter från kursens tre första år**: [Bilder](https://github.com/bjornregnell/scala-first-lessons) och [video (mp4)](https://fileadmin.cs.lth.se/pgk/scala-first-lessons.mp4). Presentationen gavs på konferensen *Scala Days* 2019 i Lusanne.

<iframe width="425" height="240" src="https://www.youtube.com/embed/ii_sC1TfpZY" title="Scala First Lessons from 3 student generations - Björn Regnell" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

### Information till äldre studenter

* Kursen EDAB05 ersätter från och med HT2025 de båda kurserna EDAA45 och EDAA60. 
* Examinationen ändrades från och med HT2021 då tentan blev valfri och ett muntligt prov infördes. Äldre studenter följer nya examinationsformen. Kontakta kursanvarig för mer information.
* Från HT2021 läser även C-programmet denna kurs som sin första programmeringskurs. Äldre C-studenter: kontakta [studievägledare](https://www.student.lth.se/stoed-och-service/studievaegledning/) för mer information.

### Information till programbytare

* Studenter som byter från annat program till C eller D och redan har läst en programmeringskurs på universitetsnivå omfattande minst 7,5 hp kan ansöka om att tillgodoräkna prog-delen och bara delta i dod-delen, men även de med formella förkunskaper kan ha stor nytta av *hela* denna grundkurs på 10,5 hp som är specialanpassad för C och D och innehåller stora möjligheter till fördjupning och ger en solid grund för fortsatta studier i systemutveckling. 
* Kontakta [studievägledare](https://www.student.lth.se/stoed-och-service/studievaegledning/) för mer information om ansökan om tillgodoräknande.


</div>

<div id="sec_links">
## Länkar

- Schema [TimeEdit](https://cloud.timeedit.net/lu/web/lth1/ri19566250000YQQ28Z0507007y9Y4763gQ0g5X6Y65ZQ176.html) [Kapten Alloc](https://fileadmin.cs.lth.se/pgk/kaptenalloc/)
- Kursmaterial:
  - [Kurskompendium Programmering hela kursen](https://fileadmin.cs.lth.se/pgk/compendium.pdf)
    (ca 730 sidor, anpassad för skärm)
  - [Kurskompendium Programmering end. lp1](https://fileadmin.cs.lth.se/pgk/compendium1.pdf)
    (ca 380 sidor, anpassad för papper)
  - [Kurskompendium Programmering end. lp2](https://fileadmin.cs.lth.se/pgk/compendium2.pdf)
    (ca 380 sidor, anpassad för papper)
  - [Öppen källkod för Kompendium Programmering](http://github.com/lunduniversity/introprog)
  - [Kompendium Datorer och datoranvändning](https://github.com/lunduniversity/introprog-computer-intro/releases/tag/dodlabs_latest)
- [Snabbreferens](https://fileadmin.cs.lth.se/pgk/quickref.pdf)
- Kodbibliotek `introprog-scalalib`:
  - [github.com/lunduniversity/introprog-scalalib](http://github.com/lunduniversity/introprog-scalalib)
  - [Api-dokumentation `introprog-scalalib`](https://fileadmin.cs.lth.se/pgk/api)
- Workspace med given kod till labbar: [fileadmin.cs.lth.se/pgk/workspace.zip](https://fileadmin.cs.lth.se/pgk/workspace.zip)
- Lärplattform:
  - [Kursyta för pgk 2025 i Canvas](https://canvas.education.lu.se/courses/35559) (end. åtkomlig för registrerade studenter)
  - [Permanent öppen information i Canvas](https://canvas.education.lu.se/courses/35559)
- [Ladok Login för studenter](https://www.student.ladok.se/student/app/studentwebb/)
- [Formell kursplan](https://kurser.lth.se/kursplaner/senaste/EDAB05.html)
- [Översiktligt kursprogram](https://fileadmin.cs.lth.se/pgk/courseplan.pdf)
- Senaste kursutvärdering (begr. access inom lu/lth): 
  - [CEQ prog (tidigare EDAA45) 2024](https://www.ceq.lth.se/rapporter/ceq/2024_HT/LP2/EDAA45_2024_HT_LP2_slutrapport.html)
  - [CEQ dod (tidigare EDAA60) 2024](https://www.ceq.lth.se/rapporter/ceq/2024_HT/LP1/EDAA60_2024_HT_LP1_slutrapport.html)

</div>

<div id="sec_prog">
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

- Föreläsningsbilder (prog):
  - Ladda ner föreläsningsbilder *per vecka*:
    [fileadmin.cs.lth.se/pgk/lect-w01.pdf](https://fileadmin.cs.lth.se/pgk/lect-w01.pdf)
    (byt `w01` mot önskad vecka) eller klicka på länk i tabellen nedan. De flesta föreläsningsbilder finns även i [kompendiet](https://fileadmin.cs.lth.se/pgk/compendium.pdf) förutom bilder med **vacker rosa** bakgrund som innehåller praktisk eller flyktig information.
  - Ladda ner *alla* föreläsningsbilder:
    [fileadmin.cs.lth.se/pgk/all-lectures.pdf](https://fileadmin.cs.lth.se/pgk/all-lectures.pdf) 
  - Kompilera veckans bilder direkt från GitHub (byt `w01` mot rätt vecka i
    adressen, kan låååång tid om omkompilering krävs):
    [`latexonline.cc/compile?git=https://github.com/lunduniversity/introprog&target=slides/lect-w01.tex&command=pdflatex`](https://latexonline.cc/compile?git=https://github.com/lunduniversity/introprog&target=slides/lect-w01.tex&command=pdflatex)
- Spellista med tidskodade programmeringsföreläsningar från pandemin finns på
  [Björn Regnells youtube-kanal](https://www.youtube.com/watch?v=ayEFku9Re8k&list=PLEV42dlCGAJ-A-F15fVPcTNhHgO3VU7mc). **Men det är mycket roligare lajv!** Notera att det finns många saker som har ändrats, så dubbelkolla mot årets
  föreläsningsbilder nedan. För att minska övervakning och reklam, använd
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
* [Visual Scala reference](https://superruzafa.github.io/visual-scala-reference/) med illustrationer av många funktioner i Scalas standardbibliotek.
* [Java SE JDK dokumentation](https://docs.oracle.com/en/java/javase/21/docs/api/) av standarbiblioteket Java JDK.
* [`docs.oracle.com/javase/tutorial`](https://docs.oracle.com/javase/tutorial/) den officiella platsen för handledning om Java.

### Examination (prog)

I kursen ingår följande **obligatoriska** examinationsmoment:

- **Laborationer**: lär dig teorin genom praktiskt arbete.
- **Projekt**: visa att du självständigt kan designa, implementera och felsöka ett större program.
- **Muntligt prov**: visa att du har tillräcklig förståelse för kursens teori för att vara redo för efterföljande programmeringskurs. Godkända laborationer, projekt och muntligt prov ger betyg 3 på kursen. Du kan träna på muntliga provet med vår [muntabot](https://fileadmin.cs.lth.se/pgk/muntabot).

Tentamen i januari är en *valfri* skrivning som kan ge överbetyg. **Alla uppmuntras att tentera**. För att få tentera krävs att alla obligatoriska moment är godkända. Tentamen skrivs med papper och penna och enda tillåtna hjälpmedel är [snabbreferensen](https://fileadmin.cs.lth.se/pgk/quickref.pdf).

**Tidigare Scala-skrivningar:** 

Från och med läsåret 2021/2022 är tentamen valfri för ev. överbetyg. Tentamina som gavs före läsåret 2021/2022 var obligatoriska och godkänt resultat krävdes för godkänd kurs. Kontrollskrivningen var en obl. övningstenta som gavs sista gången 2024 och omfattade endast kursens första läsperiod.

- Tentamen 2025-01-08: **4-i-rad**   [skrivning i pdf](https://fileadmin.cs.lth.se/pgk/EDAA45-skrivning-2025jan08.pdf) och [lösning i pdf](https://fileadmin.cs.lth.se/pgk/EDAA45-losning-2025jan08.pdf)
- Kontrollskrivning 2024-10-29: **Labbregister**  [skrivning.pdf](https://fileadmin.cs.lth.se/pgk/EDAA45-skrivning-2024okt29.pdf) och [lösning.pdf](https://fileadmin.cs.lth.se/pgk/EDAA45-losning-2024okt29.pdf)
- Tentamen 2024-01-04: **Finns i sjön**  [skrivning i pdf](https://fileadmin.cs.lth.se/pgk/EDAA45-skrivning-2024jan04.pdf), och [lösning i pdf](https://fileadmin.cs.lth.se/pgk/EDAA45-losning-2024jan04.pdf)
- Kontrollskrivning 2023-10-25 **ModuloCounter, Gruppindelning**  [skrivning i pdf](https://fileadmin.cs.lth.se/pgk/EDAA45-skrivning-2023okt25.pdf), [bedömningsmall i pdf](https://fileadmin.cs.lth.se/pgk/EDAA45-losning-2023okt25.pdf)
- Tentamen 2023-01-07: **Bubblor**  [skrivning i pdf](https://fileadmin.cs.lth.se/pgk/EDAA45-skrivning-2023jan07.pdf), [bedömningsmall i pdf](https://fileadmin.cs.lth.se/pgk/EDAA45-losning-2023jan07.pdf)
- Kontrollskrivning 2022-10-26: **Sänka skepp** [skrivning i pdf](https://fileadmin.cs.lth.se/pgk/EDAA45-skrivning-2022okt26.pdf), [bedömningsmall i pdf](https://fileadmin.cs.lth.se/pgk/EDAA45-losning-2022okt26.pdf)
- Tentamen 2022-01-08: **Allokering av granskare** [skrivning](https://fileadmin.cs.lth.se/pgk/EDAA45-exam-2022jan08.pdf), [lösning](https://fileadmin.cs.lth.se/pgk/EDAA45-exam-2022jan08-solution.pdf)


### Extra bredvidläsning (prog)

Kurskompendiet, som är fritt att ladda ner, definierar kursens innehåll och progression. Om du vill ha kompletterande kursmaterial som extra bredvidläsning rekommenderas nedan böcker. Tips om fler böcker finns [här](https://docs.scala-lang.org/books.html).

* **Introduction to Programming and Problem-Solving Using Scala, [Second Edition](https://www.adlibris.com/se/bok/introduction-to-programming-and-problem-solving-using-scala-9781498730952)**, *Mark C. Lewis, Lisa Lacher* (2016). Lärobok i programmering för nybörjare på universitetsnivå. Denna bok täcker stora delar av kursen, men innehåller även material som ingår i senare LTH-kurser. Ordningen är ganska annorlunda, men det går bra att läsa boken i en annan ordning än den är skriven - du får själv anpassa din läsning av denna bok efter pgk-kursens progression.

* **Programming in Scala, [Fifth edition](https://www.artima.com/shop/programming_in_scala_5ed)**, Martin Odersky, Lex Spoon, and Bill Venners (2021). Lämplig för dig som redan programmerat en hel del i ett objektorienterat språk t.ex. Java eller C#. Författaren Martin Odersky är upphovspersonen bakom Scala. Denna välskrivna bok innehåller en grundlig genomgång av Scala-språket med många exempel och tips. Boken följer inte kursens upplägg men det finns ett bra index som gör det lätt att anpassa din läsning efter kursens progression. Boken innehåller en hel del material som är på en mer avancerad nivå, men du kommer att ha nytta av innehållet inför kommande kurser. Den första utgåvan är tillgänglig öppet via [www.artima.com/pins1ed](http://www.artima.com/pins1ed/), men den beskriver gamla Scala 2 med delvis annorlunda syntax.

</div>

<div id="sec_dod">

## Datorer och datoranvändning (dod)

### Översikt (dod)

I denna del lär du dig några viktiga programmeringsverktyg som används i
professionell systemutveckling. Dod omfattar 4 föreläsningar och 4 laborationer
och går under kursens första 4 veckor. När du är godkänd på laborationerna får
du 3hp som delresultat i Ladok.

#### Laborationsuppgifter och labbfiler
Alla laborationsuppgifter är samlade i ett laborationshäfte. Ladda ned senaste versionen här: [Laborationsuppgifter](https://github.com/lunduniversity/introprog-computer-intro/releases/tag/dodlabs_latest).
Det finns också ett [arkiv med labbfiler](http://fileadmin.cs.lth.se/pgk/dod-lab-material.zip). (Se instruktioner i Lab 1 för hur labbfilerna kan laddas ned med `curl`)


### Operativsystem (dod)

- **Läsning**:

  - [Scalakompendium (Appendix B)](https://fileadmin.cs.lth.se/pgk/compendium.pdf)
  - Linuxkompendium — **länk kommer snart**

- **Föreläsningsbilder**:

  - [PDF Kursintro](https://github.com/lunduniversity/introprog-computer-intro/releases/tag/slides_intro_latest)
  - [PDF Unix](https://github.com/lunduniversity/introprog-computer-intro/releases/tag/slides_unix_latest)
  <!-- - [PDF Menti](https://fileadmin.cs.lth.se/cs/Education/EDAA60/lectures/2024/lecture1-menti.pdf) -->

- **Mera intressant**:

  - [Wikipedia Linux](http://en.wikipedia.org/wiki/Linux)
  - [Wikipedia Unix](http://en.wikipedia.org/wiki/Unix)
  - [Bash cheat sheet](https://github.com/RehanSaeed/Bash-Cheat-Sheet)

- **Lab**:
  - Se laborationshäftet ovan.

### Versionshantering (dod)

- **Läsning**:

  - [Scalakompendium (Appendix G)](https://fileadmin.cs.lth.se/pgk/compendium.pdf)
  - [Git and GitHub for Poets (YouTube)](https://www.youtube.com/playlist?list=PLRqwX-V7Uu6ZF9C0YMKuns9sLDzK6zoiV)
  - [Pro Git (Chacon/Staub)](https://git-scm.com/book/en/v2)

- **Föreläsningsbilder**:

  - [PDF Git](https://github.com/lunduniversity/introprog-computer-intro/releases/tag/slides_git_latest)

- **Mera intressant**:

  - [Git (officiell webbsida)](https://git-scm.com/)
  - [GitHub](https://www.github.com/)
  - Git cheat sheets
    - [GitHub](https://education.github.com/git-cheat-sheet-education.pdf)
    - [GitLab](https://about.gitlab.com/images/press/git-cheat-sheet.pdf)
    - [BitBucket](https://www.atlassian.com/git/tutorials/atlassian-git-cheatsheet)
  - [EDAA45 Lab 0](https://coursegit.cs.lth.se/edaf45/labs/lab0-git-basics)
    (_Kursen Programvaruutveckling i grupp (`pvg`) kommer ni läsa nästa år. Om
    ni redan nu vill lära er mer om Git kan ni kika på dess `Lab 0`, som går igenom
    Git mer grundligt._)

- **Lab**:
  - Se laborationshäftet ovan.

### Typsättning (dod)

- **Läsning**:

  - [LaTeX-kompendium (av Per Foreby)](http://www.ddg.lth.se/perf/handledning/)
  - Linuxkompendium — **länk kommer snart**

- **Föreläsningsbilder**:

  - [PDF LaTeX](https://github.com/lunduniversity/introprog-computer-intro/releases/tag/slides_latex_latest)

- **Mera intressant**:

  - [Overleaf](http://www.overleaf.com/)
  - [Wikipedia LaTeX](http://en.wikipedia.org/wiki/LaTeX)
  - [TeX Users Grup](http://www.tug.org/)
  - LaTeX cheat sheet, t.ex. [här](https://wch.github.io/latexsheet/)

- **Lab**:
  - Se laborationshäftet och labbfilerna ovan.

### Maskinkod (dod)

- **Föreläsningsbilder**:

  - [PDF Maskinkod](https://github.com/lunduniversity/introprog-computer-intro/releases/tag/slides_machine-code_latest)

- **Lab**:
  - Se laborationshäftet ovan.
  - [c3pu](https://github.com/lunduniversity/introprog-cpu-emulator/releases/latest) (CPU-emulator som ni ska använda i labben)

</div>

<div id="sec_tools">
## Verktyg

### Verktyg på LTH:s studentdatorer

På LTH:s [Linuxdatorer i E-huset](https://fileadmin.cs.lth.se/cs/Bilder/Salar/Datorsalar_E-huset.pdf) finns alla dessa verktyg förinstallerade:

- **Rekommenderad kodeditor:** VS Code startas med kommandot `code .`  
  (Tillägget `Scala Metals` är förinstallerat.)
- **Scala REPL:** `scala` eller `scala repl .` (punkten på slutet inkluderar dina .scala-filer i aktuell katalog)
- **Kompilera och kör:** `scala run .` eller `scala compile .` 
- **Nybörjarvänlig utvecklingsmiljö Kojo:** `kojo`
- **Byggverktyget Scala Build Tool:** `sbt`
- **Java-kompilatorn:** `javac`
- **Exekveringsmiljön JVM med tillhörande utvecklingsbibliotek (OpenJDK):** `java`
- **Utvecklingsmiljön IntelliJ IDEA med Scala-plugin:** `idea`

Mer info om skolans datorer finns [här](https://www.lth.se/lthin/datorsalar/vaara-datorsalar/e-huset/), om hur du använder Linux (Linuxkompendium — **länk kommer snart**) och [bash](https://github.com/RehanSaeed/Bash-Cheat-Sheet).

### Installera verktyg på din egen dator

I filen
[`tools.md`](https://github.com/lunduniversity/introprog/blob/master/web/tools/tools.md#programmera-p%C3%A5-din-egen-dator)
finns instruktioner om hur du installerar programmeringsverktyg på din egen dator för olika operativsystem.
Här finns också tips när du ska
[köpa egen dator](https://github.com/lunduniversity/introprog/blob/master/web/tools/tools.md#k%C3%B6pa-egen-dator) och [tips vid krångel med ÅÄÖ i Windows-terminalen](https://github.com/lunduniversity/introprog/blob/master/web/encoding/char-encoding-windows.md).

- [github.com/lunduniversity/introprog/blob/master/web/tools/tools.md](https://github.com/lunduniversity/introprog/blob/master/web/tools/tools.md)
- [github.com/lunduniversity/introprog/blob/master/web/encoding/char-encoding-windows.md](https://github.com/lunduniversity/introprog/blob/master/web/encoding/char-encoding-windows.md)

### Koda online

- Du kan skapa och köra Scala-program direkt i din webbläsare här:

  - [scastie.scala-lang.org](https://scastie.scala-lang.org/kXwW4wXzQYaKpmyNtjXp4w)

- Du kan skapa Scala-program som ritar med hjälp av en sköldpaddan här:
  - [kojo.lu.se](http://kojo.lu.se/)

</div>

<div id="sec_dictionary">
## Ordlista

- I tabellen nedan finns de programmeringsbegrepp som används i quiz-övningarna
  i kompendiet. Försök först att lösa quiz-övningarna baserat på dina studier av
  förklaringar av veckans begrepp i kompendiet, _innan_ du kollar här.
- Du kan också träna på begrepp med hjälp av
  [muntabot](https://fileadmin.cs.lth.se/pgk/muntabot/#muntabot)

<script type="text/javascript">
  $(function(){
    const uri = 'resources/concepts-generated.html';
    loadContent(uri, '#concepts-generated');
  });
</script>
<div id="concepts-generated"></div>

</div>

<div id="sec_contribute">
## Bidra till kursen

Om du vill bidra till kursen genom att rapportera fel eller föreslå
förbättringar kan du göra det genom att skapa ärende (issue) och bidrag (pull request), här:

* Bidra till kompendiet: [`github.com/lunduniversity/introprog`](https://github.com/lunduniversity/introprog)
* Bidra till kodbiblioteket: [`github.com/lunduniversity/introprog-scalalib`](https://github.com/lunduniversity/introprog-scalalib)
* Bidra till dod-labbar: [`github.com/lunduniversity/introprog-computer-intro`](https://github.com/lunduniversity/introprog-computer-intro)
* Bidra till CPU-emulator: [`github.com/lunduniversity/introprog-cpu-emulator`](https://github.com/lunduniversity/introprog-cpu-emulator)
* Bidrag till denna hemsida: [`github.com/lunduniversity/lunduniversity.github.io/tree/main/src/pgk`](https://github.com/lunduniversity/lunduniversity.github.io/tree/main/src/pgk)

  * Denna sidan är skriven i Markdown, och HTML-kod genereras genom att köra `./build.sh` **i roten** av repot. Rot-skriptet anropar i sin tur `./build.sh` i varje underkatalog, inklusive denna.

</div>

<a href="#top" class="scroll-top svg-lu-gold" aria-label="Gå till toppen">
  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
    <path d="M12 4l-8 8h5v8h6v-8h5z" />
  </svg>
</a>
