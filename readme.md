# Dotfiles

## :hammer_and_wrench: Installation:

```
curl -L https://ogy.de/koala-dotfiles -o setup-dotfiles.bash
source setup-dotfiles.bash
```
Im Home-Verzeichnis wird das Verzeichnis `dotfiles` angelegt. Existiert dieses bereits, wird ein Backup (`dotfiles.bak`) erstellt. Existiert auch das Backupverzeichnis, so wird dieses zuerst gelöscht (Achtung, es kann zu Meldungen für fehlende Schreibrechte im git-Verzeichnis kommen. Diese müssen mit "y" bestätigt werden.).


## :mag: Für wen?

In erster Linie für Linux-Nutzer und Bash-Jongleure die zum Beispiel `git` lieber über die Konsole benutzen, als mit einer IDE oder ähnlichem.  
Einige Kommandos und Einrichtungen stammen vom Originalautor und sind für Mac angepasst. Das kann ich aber derzeit (2023) nicht testen. Belasse es aber mit drin. Wer das auf einem Mac anwenden möchte, möge die Funktionen bitte selbstständig prüfen und für sich anpassen.


## :raised_eyebrow: Was soll das?

Mit Hilfe der Sammlung dieser Dateien können auf allen Rechnern und für jeden Benutzer einzeln die selben Einstellungen schnell eingerichtet werden. Setup holen, ausführen. Fertig

Einiges werde ich vom Original auskommentiert lassen, da der Nutzen teilweise (noch) nicht da ist.

Bei https://dotfiles.github.io/ finden sich eine Vielzahl an Seiten zu dem Thema selbst. Viel Spaß beim Stöbern und ausprobieren.  
:point_up: Memo an mich selbst: Denk dran - immer erst ein Backup machen! :point_up:

Bei der hier verwendeten Variante werden Links für die Dotfiles angelegt. Die Originaldateien verbleiben im Verzeichnis `~/dotfiles`. Andere kopieren die Dateien direkt nach `~/`. Das ist Geschmackssache ... oder gibt es etwas, dass gegen Links spricht?  



## :building_construction: Benötigte Programme
- `git`
- `apt-get` (falls `git` nicht installiert ist)
- Optional: `icdiff`

`icdiff` wird als diff-Programm für git verwendet. Es wird aber nicht automatisch installiert.


## :book: Dokumentation

Ein bisschen Dokumentation (mehr gegen das eigene Vergessen :monocle_face:): [docs](docs/docs.md)  
Ein bisschen Dokumentation die Zweite: [Changelog](docs/changelog.md)



## :tada: Original / Inspiriert von:
https://github.com/branneman/dotfiles


## :wrench: ToDo

- bessere Interaktion (Rückfragen) für die Bearbeitung der Dateien einbauen.
- Originaldateien (Nicht-Dotfiles) vorher sichern (eigenes Verzeichnis? einfach nur umbenennen?)


