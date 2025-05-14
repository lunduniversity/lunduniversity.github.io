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
**Kursansvarig**: [Björn Regnell](http://cs.lth.se/bjornregnell)  
**Biträdande kursansvarig**:
[Mattias Nordahl](https://cs.lth.se/nordahl-mattias/)

Kursen omfattar grundläggande programmeringsprinciper och datavetenskapliga
begrepp. Du lär dig programmeringsspråket Scala, att konstruera algoritmer, att
använda datastrukturer och mycket annat. Det krävs inga förkunskaper i
programmering. Kursen ger en solid grund för fortsatta studier i
systemutveckling.

Kursen har två föreläsningsserier: en för programmering och en för datorer och
datoranvändning (dod). Programmeringsföreläsningarna är varje vecka genom hela
kursen, medan dod-föreläsningarna är under de fyra första veckorna. 

## Länkar

- [Schedule in TimeEdit](https://cs.lth.se/pgk/schema/timeedit/)
- [Course program](https://fileadmin.cs.lth.se/pgk/courseplan.pdf)
- [Course compendium](https://cs.lth.se/pgk/kompendium/)
- [Compendium open source](http://github.com/lunduniversity/introprog)
- [Library introprog-scalalib](http://github.com/lunduniversity/introprog-scalalib)
- [Ladok login](https://www.student.ladok.se/student/app/studentwebb/)
- [Canvas Login](https://canvas.education.lu.se/courses/31677)


## Programmering (prog)

### Inspelade föreläsningar (prog)

Inspelade föreläsningar från tidigare år:
[https://cs.lth.se/pgk/youtube](https://cs.lth.se/pgk/youtube)

Men det är roligare lajv! Notera att vissa saker har ändrats, så dubbelkolla mot
årets föreläsningsbilder nedan. För att minska övervakning och reklam, använd
webbläsaren [Firefox](https://www.mozilla.org/en-US/firefox/all) med
[uBlock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/).

### Föreläsningsbilder (prog)

- Ladda ner föreläsningar per vecka:
  [https://fileadmin.cs.lth.se/pgk/lect-w01.pdf](https://fileadmin.cs.lth.se/pgk/lect-w01.pdf)
  (byt `w01` mot önskad vecka).

- Ladda ner alla föreläsningar:
  [https://cs.lth.se/pgk/allslides](https://cs.lth.se/pgk/allslides)

- Bilder med **rosa** bakgrund innehåller praktisk information som inte finns i
  [kompendiet](https://cs.lth.se/pgk/compendium/).

- Kompilera veckans bilder direkt från GitHub (byt `w01` mot rätt vecka):
  [latexonline.cc/compile...](https://latexonline.cc/compile?git=https://github.com/lunduniversity/introprog&target=slides/lect-w01.tex&command=pdflatex)

### Schema och innehåll (prog)

<script type="text/javascript">
  $(function(){
    const contentURI= 'https://raw.githubusercontent.com/lunduniversity/introprog/master/plan/module-plan-generated.html';
    const proxyURI = 'https://cs.lth.se/fileadmin/cs/phpLoad.php?url=';
    // const uri = proxyURI + contentURI;
    const uri = 'resources/module-plan-generated.html';
    // $('#result').load(uri, function(responseText, textStatus, jqXHR) {
    //   if (textStatus === 'success') {
    //     console.log('Loaded content successfully');
    //   } else {
    //     console.error('Failed to load content2:', jqXHR.statusText);
    //     $('#result').html(`<p>Kunde inte ladda innehåll från <a href="${contentURI}">${uri}</a>.</p>`);
    //   }
    // });
    loadContent(uri, '#result');
  });
</script>
<div id="result"></div>


### Litteratur (prog)

- TODO: flytta [denna sida](https://cs.lth.se/pgk/litteratur/) hit

### Ordlista (prog)

- TODO: flytta [denna sida](https://cs.lth.se/pgk/ordlista/) hit

### Verktyg (prog)

- TODO: flytta [denna sida](https://cs.lth.se/pgk/verktyg/) hit

### Koda online (prog)

- TODO: flytta [denna sida](https://cs.lth.se/pgk/code-online/) hit

### Examination (prog)

- TODO: flytta [denna sida](https://cs.lth.se/pgk/examination/) hit

## Datorer och datoranvändning (dod)

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
