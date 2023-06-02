# Dokumentation

## Dateien

### .bash_aliases

Hier werden Alias definiert.
Eine Übersicht der definierten Alias kann in der Konsole mit dem Befehl `alias` aufgerufen werden.


### .bash_profile

Diese Datei gibt es normalerweise nicht auf einem Debian-System. Aber wenn sie existiert, wird `.profile` ignoriert. Daher wird dies in dieser Datei aufgerufen und damit eine Kompatibilität zu anderen System gewahrt.


### .bash_prompt

Das Aussehen des Prompt wir hier zusammengebaut.
Hier gibt es auch etwas Git-Magie. Befindet sich der User in einem Verzeichnis mit einem Git-Repository, wird der Prompt in Abhängigkeit vom Repo angepasst.

Check for untracked files.
`git:main [?]`

Check for unstaged changes.
`git:main [!]`

Check for uncommitted changes in the index.
`git:main [+]`

Dies kann auch in Kombination auftreten.
Check for untracked files + Check for unstaged changes
`git:main [!?]`


### .bashrc

Wird bei jedem Start einer Bash-Shell aufgerufen. 
Hier werden `.bash_alias`, `.bash_prompt` und `.gitcompletion.bash` aufgerufen.


### .gitcompletion.bash

Git-Magie! 


### .gitconfig

Definiert Einstellungen zu Git.
Unter anderem auch Alias. Zum Beispiel `git s` = `git status`.
Alle Alias lassen sich mit `git alias` ausgeben.


### .gitignore

Globale Einstellungen zu `.gitignore`. 


### .inputrc



### .profile






## Dateiaufrufreihenfolge bei Login
``` 
.bash_profile
.profile
.bashrc
.bash_alias
.bash_prompt
.bashrc
.bash_alias
.bash_prompt
``` 

Warum hier `.bashrc`, `.bash_alias` und `.bash_prompt` doppelt aufgerufen, ist mir (noch) nicht klar.






## Dateiaufrufreihenfolge bei Start einer Shell
``` 
.bashrc
.bash_alias
.bash_prompt
``` 




