# Pflege des Standards

- Allgemeine Änderungen werden auf einem Arbeitsbranch vorbereitet.
- Vor dem Pull Request werden betroffene Regeln und Querverweise auf Konsistenz geprüft.
- Der Public-Safety-Check muss erfolgreich sein.
- Änderungen an zentralen Regeln werden im Changelog erfasst, wenn sie für veröffentlichte Nutzer relevant sind.
- `main` bleibt der stabile öffentliche Stand.
- Private Erweiterungen werden nicht automatisch in dieses Repository gespiegelt.

Nach Einführung eines neuen automatisierten Checks kann dieser nach einem erfolgreichen ersten Lauf als verpflichtender Status-Check für `main` aktiviert werden.
