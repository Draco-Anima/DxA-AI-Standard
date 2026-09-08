# DxA-AI-Standard

Ein modellunabhängiger Qualitäts- und Arbeitsstandard für die langfristige Zusammenarbeit mit KI-Assistenten, Agenten und lokalen Modellen.

## Ziel

DxA-AI-Standard trennt allgemeine Arbeitsregeln, projektspezifische Regeln, temporären Arbeitsstand und persönliche Nutzerkonfiguration voneinander. Dadurch bleiben Entscheidungen nachvollziehbar, Projektquellen maßgeblich und KI-gestützte Arbeit über Chats und Modelle hinweg konsistent.

## Struktur

- `core/` enthält die projektübergreifenden Arbeitsregeln und Checklisten.
- `templates/` enthält neutrale Vorlagen für neue Projekte und die private Nutzerkonfiguration.
- `projects/learning/` enthält die allgemeinen Regeln für Learning- und Tutorial-Kontexte.
- `.work/` ist im Workflow als temporärer persistierter Arbeitsbereich definiert, gehört aber nicht in diese öffentliche Distribution.
- Eine ausgefüllte `USER.md` ist privat und darf nicht veröffentlicht werden. Als Ausgangspunkt dient `templates/USER.md`.

## Grundprinzipien

- Der aktuelle ausdrückliche Auftrag hat Vorrang.
- Projektspezifische Regeln schlagen allgemeine Regeln, sofern sie ausdrücklich abweichen.
- Fachquellen eines Projekts bleiben für dessen Inhalt maßgeblich; dieser Standard definiert den Umgang mit ihnen.
- Was nicht dokumentiert oder bestätigt ist, wird nicht als feste Entscheidung angenommen.
- Bestätigter Stand, Vorschläge, offene Entscheidungen und tatsächlich umgesetzte Änderungen werden eindeutig unterschieden.
- Bestehende funktionierende Strukturen werden nicht ohne Auftrag ersetzt.

## Nutzung

1. Repository übernehmen oder die benötigten Dateien in den eigenen KI-Arbeitsbereich integrieren.
2. Optional `templates/USER.md` als private `USER.md` anlegen und an die eigene Zusammenarbeit anpassen.
3. Projekt und Aufgabenart bestimmen.
4. Relevante Regeln aus `core/` und gegebenenfalls Projektregeln lesen.
5. Erst danach den aktuellen Stand der maßgeblichen Fachquellen prüfen und bearbeiten.
6. Für umfangreiche oder chatübergreifende Projektarbeit den in `core/00_Workflow.md` definierten `.work/`-Workflow verwenden.
7. Vor der Übergabe die passende Checkliste anwenden.

## Öffentliche und private Daten

Dieses Repository enthält ausschließlich den öffentlichen Standard. Persönliche Nutzerprofile, konkrete private Projektdaten und persistierte `.work/`-Arbeitsstände gehören in private Arbeitsbereiche oder projektspezifische Repositories.

Ein automatischer Public-Safety-Check verhindert, dass zentrale private Pfade versehentlich in die öffentliche Distribution gelangen.

## Beiträge

Änderungen erfolgen über Branches und Pull Requests. Details stehen in `CONTRIBUTING.md`.

## Lizenz

DxA-AI-Standard steht unter der MIT-Lizenz. Siehe `LICENSE`.
