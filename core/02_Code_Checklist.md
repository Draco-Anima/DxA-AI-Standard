# Code-Checkliste und Umsetzungsregeln

## Vor der Umsetzung

- [ ] Aufgabe, betroffene Bereiche und Akzeptanzkriterien sind klar.
- [ ] Aktueller Branch, Arbeitsbaum, relevante Dokumentation und vorhandene Änderungen wurden geprüft.
- [ ] Bestehende Architektur, Konventionen, Schnittstellen und Betriebsarten wurden gelesen.
- [ ] Vorhandene Funktionen, Komponenten, Services, Hilfsklassen und vergleichbare Lösungen wurden gesucht.
- [ ] Betroffene Aufrufer, Abhängigkeiten und angrenzende Abläufe wurden ermittelt.
- [ ] Die Änderung bleibt auf den beauftragten Umfang begrenzt.

## Architektur und Code

- Redundanter Code wird vermieden und die Änderung in die bestehende Architektur integriert.
- Öffentliche Schnittstellen und bestehendes Verhalten werden nur verändert, wenn der Auftrag dies erfordert.
- Fachliche Logik, Darstellung, Datenhaltung und externe Kommunikation bleiben entsprechend der Projektarchitektur getrennt.
- Eine gezielte Änderung hat Vorrang vor einer nicht erforderlichen Neustrukturierung.
- Fehlerfälle, Randbedingungen und betroffene Betriebsarten werden berücksichtigt.
- Funktionierende Bereiche werden nicht durch erzwungene Umgehungen ersetzt, nur um eine Fehlermeldung verschwinden zu lassen.

## Datenbank und Sicherheit

- Vor Schemaänderungen werden Entitäten, Migrationen, Beziehungen, Datentypen, Indizes und Constraints geprüft.
- Schemaänderungen werden auf allen betroffenen Anwendungsebenen berücksichtigt.
- Destruktive Datenbankaktionen werden nur nach ausdrücklichem Auftrag und eindeutiger Zielprüfung ausgeführt.
- `UPDATE` und `DELETE` verwenden eine bewusst geprüfte Einschränkung, sofern keine vollständige Änderung ausdrücklich verlangt wurde.
- Authentifizierung, Autorisierung, Berechtigungen, personenbezogene Daten, Zugangsdaten und Veröffentlichungslogik gelten als sicherheitsrelevant.
- Tokens, Schlüssel, Passwörter und andere Geheimnisse werden nicht ausgegeben oder eingecheckt.
- Umgebungsvariablen, Zugangsdaten und produktive Konfigurationswerte werden nicht erfunden.

## Git-Arbeitsweise

- Nicht zur Aufgabe gehörende Dateien und vorhandene fremde Änderungen werden nicht verändert oder verworfen.
- Destruktive Git-Befehle werden nicht zur Bereinigung eines unbekannten Arbeitsstands verwendet.
- Commit, Push, Pull Request und Merge sind getrennte Aktionen.
- Außerhalb der in `core/00_Workflow.md` freigegebenen Pflege von `.work/` werden nur ausdrücklich beauftragte Git-Aktionen ausgeführt.
- Änderungen an `.work/` werden getrennt von Implementierungsänderungen gespeichert und nicht in den Pull Request für Quellcode- oder Projektänderungen aufgenommen.
- Vor einem Pull Request wird der tatsächliche Diff darauf geprüft, dass keine `.work`-Änderungen Bestandteil des Implementierungsumfangs sind.
- Der Abschluss einer Änderung allein ist kein Auftrag für Commit, Push, Pull Request oder Merge.
- Vor einem Commit wird der tatsächliche Änderungsumfang geprüft und verständlich zusammengefasst.
- Eine Änderung wird nur bei einem nachgewiesenen Konflikt oder fehlgeschlagenen Check als nicht mergbar bezeichnet.
- Nach Git-Aktionen werden Aktion, Branch und tatsächliches Ergebnis eindeutig berichtet.

## Prüfung vor Abschluss

- [ ] Formatierung, Syntaxprüfung, Linter, relevante Tests und Builds wurden ausgeführt oder der konkrete Hinderungsgrund ist dokumentiert.
- [ ] Das gewünschte Verhalten und unmittelbar angrenzende Funktionen wurden geprüft.
- [ ] Keine Zugangsdaten, Schlüssel oder lokalen Konfigurationsdateien wurden eingecheckt.
- [ ] Umgesetzt, automatisiert geprüft, manuell geprüft, noch zu prüfen und nicht umgesetzt sind klar unterschieden.
- [ ] Verbleibende Risiken und ausstehende Prüfschritte sind transparent beschrieben.
