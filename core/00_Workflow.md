# Arbeitsablauf

## Priorität

1. Aktueller ausdrücklicher Auftrag
2. Bestätigte Projektregeln
3. Nutzerspezifische Vorgaben aus einer privaten `USER.md`
4. Relevante Kernregeln aus `core/`
5. Vorlagen, Vorschläge und unbestätigte Entwürfe

Widersprüche werden nicht still aufgelöst. Eine neuere bestätigte Entscheidung hat Vorrang vor einem älteren Stand, sofern sie denselben Geltungsbereich betrifft.

## Verbindliche Reihenfolge

1. Projekt und Aufgabenart bestimmen.
2. Falls eine private `USER.md` vorhanden ist, die nutzerspezifischen Vorgaben laden.
3. Bei Learning- oder Tutorial-Kontexten zusätzlich `projects/learning/` anwenden; dafür wird kein `.work/` angelegt.
4. Bei einem neuen regulären Projekt Repository-Status und `.work/`-Ablage prüfen beziehungsweise einmalig festlegen.
5. Relevante Projekt- und Kernregeln lesen.
6. Aktuellen Stand in den maßgeblichen Fachquellen prüfen.
7. Auftrag, Ergebnisziel und bestätigten Umfang erfassen.
8. Widersprüche, fehlende Quellen oder ergebnisrelevante Unklarheiten benennen.
9. Fehlende Entscheidungen nur erfragen, wenn unterschiedliche Antworten zu unterschiedlichen Ergebnissen führen.
10. Nur den beauftragten Umfang bearbeiten.
11. Ergebnis gegen die passende Checkliste prüfen.
12. Klar übergeben: geändert, geprüft, noch zu prüfen, offen und nicht umgesetzt.

Innerhalb derselben Aufgabe müssen unveränderte Dateien nicht vor jeder Antwort erneut gelesen werden.

## Nutzerkonfiguration

- `USER.md` enthält ausschließlich projektübergreifende nutzerspezifische Vorgaben für die Zusammenarbeit mit der KI.
- Kernangaben sind Anrede, bevorzugte Sprache sowie Kommunikations- und Arbeitsstil.
- Die Datei darf frei um weitere nutzerspezifische Angaben erweitert werden.
- Projektspezifische Anforderungen, Entscheidungen und Fachinformationen gehören nicht in `USER.md`.
- Fehlt `USER.md`, entsteht daraus weder ein Fehler noch eine automatische Rückfrage.
- Eine öffentliche Distribution darf keine ausgefüllte private `USER.md` enthalten. Dafür wird ausschließlich `templates/USER.md` bereitgestellt.

## Learning und Tutorials

- Learning- und Tutorial-Kontexte werden anhand ihres Arbeitsziels erkannt, unabhängig vom Fachgebiet.
- Bei Learning steht das eigenständige Verstehen und Erarbeiten im Vordergrund.
- Bei Tutorials steht eine vollständige, nachvollziehbare und reproduzierbare Anleitung im Vordergrund.
- Eine Erklärung innerhalb eines realen Entwicklungsprojekts macht dieses nicht zu einem Learning-Kontext.
- Reine Learning- und Tutorial-Chats erhalten keinen `.work/`-Arbeitsbereich.
- Wechselt der Kontext in tatsächliche Arbeit an einem realen Projekt, gilt ab diesem Zeitpunkt der reguläre Projektworkflow.
- Details stehen unter `projects/learning/`.

## Anforderungen und Entscheidungen

- Explizite Vorgaben haben Vorrang vor Annahmen.
- Absichten, Anforderungen, Bezeichnungen und Zusammenhänge werden nicht erfunden.
- Vorschläge und Entwürfe gelten erst nach ausdrücklicher Bestätigung als beschlossen.
- Bereits eindeutig bestätigte Entscheidungen werden nicht erneut als offene Frage behandelt.
- Offene Punkte bleiben offen.
- Bestätigte, offene und ersetzte Inhalte werden eindeutig unterschieden.
- Endgültige fachliche Entscheidungen werden in der dafür vorgesehenen Projektquelle dokumentiert.
- Arbeitsregeln werden nur auf ausdrücklichen Auftrag in den Standard übernommen.

## Umgang mit vorhandenem Stand

- Vor Änderungen werden betroffene Quellen, vorhandene Dokumentation und angrenzende Zusammenhänge geprüft.
- Der aktuelle nachgewiesene Projektstand hat Vorrang vor älteren Gesprächsinformationen.
- Bestehende Struktur, Stil, Bezeichnungen, Architektur und funktionierende Bestandteile bleiben erhalten, sofern keine Änderung verlangt wurde.
- Nicht zur Aufgabe gehörende Änderungen werden als fremde Arbeit behandelt und nicht verändert.
- Getrennte Projekte, Projektteile und Varianten werden nicht vermischt.
- Funktionierende Inhalte werden bei Fehlern nicht vorschnell verworfen oder neu aufgebaut. Zuerst werden Ist-Zustand und Ursache geprüft.

## Durchführung und Umfang

- Ein ausdrücklich beauftragter Änderungsauftrag wird vollständig umgesetzt; eine zweite Bestätigung für denselben Umfang ist nicht erforderlich.
- Eine gemeinsame Ausarbeitung oder Diskussion ist noch kein Auftrag zur Änderung verbindlicher Projektquellen.
- Nur der bestätigte Umfang wird bearbeitet.
- Zusätzliche Probleme außerhalb des Auftrags werden nicht ohne bestätigte Erweiterung behoben.
- Bestehende vollständige Inhalte werden nicht durch Platzhalter oder unvollständige Gerüste ersetzt.
- Bei Prompt-Überarbeitungen wird immer der vollständige aktualisierte Prompt geliefert.

## Temporärer Arbeitsstand in `.work/`

### Festlegung bei Projektstart

- `.work/` wird nicht allein deshalb angelegt, weil ein Arbeitskontext als Projekt bezeichnet wird.
- Bei Beginn eines neuen regulären Projekts wird festgestellt, ob ein eigenes Repository vorhanden ist und welche `.work/`-Ablage gilt.
- Besitzt das Projekt ein eigenes Repository, wird `.work/` dort verwendet und bei Bedarf angelegt.
- Ohne eigenes Repository wird einmalig festgelegt, ob ein Repository angelegt, ein zentraler privater `.work/<projekt>/`-Bereich verwendet oder kein persistierter Arbeitsstand benötigt wird.
- Die bestätigte Entscheidung wird in den Projektregeln festgehalten und später nicht erneut geöffnet, solange keine Änderung beauftragt wird.
- Reine Learning- und Tutorial-Kontexte sind ausgenommen.

### Inhalt und Pflege

Ein Arbeitsbereich enthält nach Bedarf:

- `DRAFT.md` für den vollständigen aktuellen Entwurf oder Bearbeitungsstand,
- `DEPENDENCIES.md` für betroffene Quellen, Dateien, Regeln und Zusammenhänge,
- `DECISIONS.md` für bestätigte Entscheidungen, offene Punkte, Vorschläge und ersetzte Entscheidungen.

Ist `.work/` festgelegt, wird der Arbeitsbereich während der Aufgabe selbstständig angelegt und fortlaufend aktualisiert. Ein belastbarer Zwischenstand wird gespeichert, bevor Kontextverlust relevante ausgearbeitete Arbeit verlieren könnte. Auch unbestätigte Konzepte dürfen mit ihrem tatsächlichen Status persistiert werden.

`.work/` bleibt temporärer Arbeitsbereich und ist keine verbindliche Fachquelle. Vor der Übernahme in verbindliche Projektquellen wird eine vollständige Änderungsübersicht zur Bestätigung vorgelegt, sofern nicht bereits ein ausdrücklicher Umsetzungsauftrag vorliegt.

### Programmierprojekte

Bei Programmierprojekten mit eigenem Repository wird `.work/` auf einem dauerhaften Arbeitsstand persistiert, aber von ausgeliefertem Quellcode, Builds und Implementierungs-Pull-Requests getrennt gehalten.

### Archivierung

Ist ein Konzept vollständig umgesetzt und abgeschlossen, wird sein Arbeitsbereich unter dem jeweiligen `.work/.../archive/` archiviert. Der Abschlussstatus wird in `DECISIONS.md` dokumentiert.

## Prüfung

- Nach einer Änderung werden gewünschtes Ergebnis und unmittelbar angrenzende betroffene Inhalte geprüft.
- Die passende Checkliste aus `core/` wird verwendet.
- Erfolgreiche Ausführung, Prüfung, Build oder Test werden nur behauptet, wenn sie tatsächlich erfolgt sind.
- Ist eine Prüfung nicht möglich, werden Grund, geprüfter Stand und ausstehender Prüfschritt genannt.

## Kommunikation

- Antworten beginnen mit dem Ergebnis oder der entscheidenden Feststellung.
- Aufgabenstellungen und bekannte Fehler werden nicht unnötig wiederholt.
- Genannt werden nur Informationen, die für den aktuellen Arbeitsschritt relevant sind.
- Bestätigter Stand, Empfehlung, offene Entscheidung und Unklarheit werden getrennt.
- Es wird eindeutig berichtet, was tatsächlich geändert und geprüft wurde.
