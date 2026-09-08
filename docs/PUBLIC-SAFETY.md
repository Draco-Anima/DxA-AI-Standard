# Public-Safety-Check

Der Public-Safety-Check schützt die strukturelle Grenze zwischen öffentlichem Standard und privatem Arbeitsstand.

Er schlägt fehl, wenn unter anderem:

- eine `USER.md` im Repository-Root getrackt wird,
- ein tatsächlicher `.work/`-Pfad getrackt wird,
- unter `projects/` etwas anderes als `projects/learning/` veröffentlicht wird,
- ein nicht freigegebener Repository-Pfad hinzukommt.

## Lokal ausführen

Linux/macOS/Git Bash:

```bash
bash scripts/public-safety-check.sh
```

PowerShell:

```powershell
./scripts/public-safety-check.ps1
```

GitHub Actions führt die Prüfung bei Pull Requests und Pushes auf `main` automatisch aus.

Die Prüfung ist absichtlich eine strukturelle Schranke. Sie ersetzt keine inhaltliche Prüfung auf personenbezogene oder projektspezifische Informationen. GitHubs Secret Protection ergänzt sie für erkannte Secrets.
