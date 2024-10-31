# Yousuf's Passwort-Manager

## Funktionen

Das Ziel des Passwort-Managers war eine CRUD-Applikation (Create, Read, Update, Delete) zu entwickeln, welche die eingegebenen Daten nicht-persistent speichert.
Das Resulat der Anwendung bietet folgende Funktionalitäten mit den ensprechenden CRUD Eigenschaften:

Funktion | CRUD 
--- | --- 
Passwort erstellen | Create
Passwörter lesen   /<br> Nicht persistente Speicherung | Read
Passwort in Zwischenablage kopieren | Read
Passwortstärke bewerten | Read
Passwort mit ROT-13 verschlüsseln | Update
ROT13-Chiffre entschlüsseln | Update
Passwort löschen | Delete



## Architektur & Aufbau

Für meinen Passwortmanager greife ich auf das Micro-Framework [Bottle](https://github.com/bottlepy/bottle) zurück. Der Grund hierfür ist, dass dies den Zugriff auf Python Module einfacher gestaltet und Python in der Programmierung leichter umsetzbar wäre,
anstatt die Anwendung in JavaScript zu programmieren. 

Der Kern der Anwendung besteht aus der bottle.py-Datei, welche für das Routing, sowie für die zugrundeliegende Logik, welche für die CRUD-Anweisungen zuständig sind.
Diese Datei ist zudem für die Verwaltung der Passwörter zuständig
Diese erfolgt durch ein Array, welches mehrere Dictonaries entält. Ein Passwort wird mit folgenden Keys initalisiert:
Key | Funktion 
--- | --- #
password | Inhalt des Passwortes.
password_id | Zuordnung zur nachträglichen Identifizierung.<br> Die Initaliserung erfolgt durch eine globale Variable, welche inkrementiert wird.
enrypted| Gibt an, ob ein Passwort bereits verschlüsselt ist. <br> Encrypted wird standardmäßig mit 0 initalisiert.
security_level | Wird durch password_checker.py, unter Verwendung von password initalisiert.



### Projektdaten
Entwickler: M.-Yousuf Yesil <br>
Entwicklungszeitraum 28.10 - 31.10 <br>
Programmiersprachen: Python <br>
Frameworks: Bottle <br>
Module: Pyperclip


