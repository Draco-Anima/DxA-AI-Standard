# Dokumentation und Kommentare für codebasierte Projekte

## Grundsatz

Dokumentation erklärt Projekt, Nutzung und relevante technische Zusammenhänge. Kommentare erklären Entscheidungen, Regeln und nicht offensichtliche Zusammenhänge im Code. Der Code selbst erklärt die triviale Implementierung.

Es gibt weder einen starren Dokumentationsumfang noch eine Kommentarquote. Ziel ist ein nachvollziehbarer aktueller Projektstand ohne redundante oder rein formale Dokumentation.

## README und Projektdokumentation

Soweit für das Projekt relevant, dokumentieren README oder zentrale Projektdokumentation:

- Projektzweck und Status,
- technischen Überblick und zentrale Komponenten,
- Voraussetzungen und Einrichtung der Entwicklungsumgebung,
- tatsächlich verwendete Start-, Build- und Testabläufe,
- notwendige Konfiguration ohne echte Secrets,
- relevante Projektstruktur, Architektur und Abläufe,
- Verweise auf weiterführende projektspezifische Dokumentation.

Umfang und Detailtiefe richten sich nach Größe, Komplexität, Zielgruppe und tatsächlichem Informationsbedarf. Bei normalen Änderungen wird nur betroffene Dokumentation aktualisiert; bei einer ausdrücklich systematischen Dokumentationsüberarbeitung wird der gesamte aktuelle Projektstand geprüft.

## Code-Kommentare

Kommentare sind insbesondere sinnvoll, wenn das Warum einer Entscheidung, eine fachliche Regel, ein technisch notwendiger Ablauf, relevante Seiteneffekte, eine ungewöhnliche Lösung oder ein Workaround nicht aus dem Code selbst hervorgehen.

Triviale Aussagen werden nicht kommentiert. Kann verständlichere Benennung oder Struktur einen Kommentar überflüssig machen, wird dies bevorzugt. Kommentare dokumentieren keine Änderungshistorie, Autoren oder Datumsangaben, die in Git oder Changelog gehören.

## Doc-Kommentare und API-Dokumentation

Für Doc-Kommentare wird das etablierte Format der jeweiligen Sprache oder des Frameworks verwendet. Sie dokumentieren Vertrag und fachlich relevante Bedeutung einer Schnittstelle, nicht deren zeilenweise Implementierung.

Dokumentiert werden insbesondere öffentliche APIs, wenn deren Vertrag nicht vollständig aus Signatur und Benennung hervorgeht, sowie relevante Parameterregeln, Rückgabewerte, Exceptions, Seiteneffekte, Voraussetzungen und Garantien.

## Aktualität und Synchronität

- Nur tatsächlich betroffene Dokumentation wird geändert.
- Ändert sich dokumentiertes Verhalten, wird die zugehörige Dokumentation im selben Arbeitsumfang aktualisiert.
- Entfernte Funktionen, Parameter, Konfigurationen oder Abläufe werden aus betroffener Dokumentation entfernt.
- Kommentare und Doc-Kommentare werden bei Änderungen des zugehörigen Codes auf Aktualität geprüft.
- Beispiele, Befehle, Pfade und Konfigurationsnamen müssen mit dem tatsächlichen Projektstand übereinstimmen.
- Nicht verifizierbare Aussagen werden nicht als Tatsachen neu dokumentiert.

Dokumentationspflege ist Bestandteil einer Codeänderung, aber kein Freibrief zur ungefragten Erweiterung des fachlichen Änderungsumfangs.

## Changelog und Release-Historie

Ein Changelog wird geführt, wenn ein Projekt versioniert veröffentlicht wird oder Änderungen für Nutzer oder eine Community nachvollziehbar sein sollen. Relevant sind insbesondere Features, Verhaltensänderungen, wichtige Bugfixes, entfernte Funktionen, Breaking Changes und Kompatibilitätsänderungen.

Die Struktur kann sich am Prinzip von Keep a Changelog mit nachvollziehbaren Versionen und Kategorien wie `Added`, `Changed`, `Fixed` und `Removed` orientieren. Historische Einträge werden nicht ohne belastbare Quellen erfunden.

## Systematische Überarbeitung bestehender Projekte

Bei einer systematischen Überarbeitung ist der tatsächliche aktuelle Projektstand die Grundlage. Vorhandene Dokumentation und Kommentare werden nicht ungeprüft als Wahrheit übernommen. Veraltete Angaben werden korrigiert, fehlende wesentliche Informationen ergänzt, sinnvolle Kommentare bewahrt und triviale oder falsche Kommentare entfernt.

Eine Dokumentationsüberarbeitung darf nicht als Vorwand für unbeauftragtes Refactoring oder funktionale Änderungen dienen.
