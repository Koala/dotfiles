# Dokumentation

## Dateien

### .bash_aliases

Wird in der `.bashrc` aufgerufen.  
Hier werden Alias definiert.  
Eine Übersicht der definierten Alias kann in der Konsole mit dem Befehl `alias` aufgerufen werden.

### .bash_aliases_only_actuall_user

Wird in der `.bashrc` aufgerufen.  
Dies ist nur eine leere Vorlage. Die Datei selbst wird nicht als Alias angelegt, sondern, wenn sie nicht existiert, nur in das Home-Verzeichnis kopiert.  
Hier werden Alias definiert, die ausschließlich vom lokalen Benutzer verwendet werden (können). Das können zum Beispiel Alias zu Pfaden zu sensiblen Daten sein, auf die ausschließlich der aktuelle Benutzer Zugriff hat.  


### .bash_profile

Ruft beim Login auf:  
`.profile`  
`.bashrc`


### .bash_prompt

Wird in der `.bashrc` aufgerufen.  
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

Wird in der `.bash_profile` aufgerufen.  
Wird bei **jedem** Start einer Bash-Shell aufgerufen.   
Ruft auf:  
`.bash_alias`  
`.bash_prompt`  
`.gitcompletion.bash`


### .gitcompletion.bash

Wird in der `.bashrc` aufgerufen.  
Git-Magie!  
Beachte den Hinweis in der Changelog vom [06.08.2023]!  

### .gitconfig

Definiert Einstellungen zu Git.  
Unter anderem auch Alias. Zum Beispiel `git s` = `git status`.  
Alle Alias lassen sich mit `git alias` ausgeben.


### .gitignore

Globale Einstellungen zu `.gitignore`. 


### .inputrc

Wird vom System selbst beim Login bzw. beim Starten einer Shell interpretiert.  
Änderungen in dieser Datei werden nur durch Starten einer Shell neu interpretiert und gelten dann auch nur für diese Shell.  
In dieser Datei dürfen **KEINE** echo-Befehle stehen! *(leidvoller Selbsttest :see_no_evil:)*


### .profile

Wird in der `.bash_profile` aufgerufen.  
Wird einmalig beim Login aufgerufen.


## Dateiaufrufreihenfolge bei Login
``` 
.bash_profile
.profile
.bashrc
.bash_alias
.bash_prompt
.gitcompletion.bash
``` 


## Dateiaufrufreihenfolge bei Start einer Shell
``` 
.bashrc
.bash_alias
.bash_prompt
.gitcompletion.bash
``` 




