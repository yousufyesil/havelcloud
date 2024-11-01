# Yousuf's Passwort-Manager
In diesem Repo geht es um einen kleinen Passwort-Manager, welcher Lokal betrieben wird und viele tolle Features beinhaltet. 
Auf meiner [EC2 Instanz](http://havelit.tech:8080) ist die Anwendung ebenfalls eigenständig ausführbar ohne Sie lokal ausführen zu müssen.<br> Anmerkung: Der Zugang zur EC2 Instanz kann nur gewährleistet werden, wenn diese hochgefahren sind. An einer dauerhaften Verfügbarkeit wird derzeit gearbeitet
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


Die Umsetzung der ROT13-Verschlüsselung basiert auf einem Semesterprojekt im Zeitraum vom 01.05.2024 - 01.07.2024. Das Ziel des Semesterprojektes war es eine Anwendung in Python auf einem Webserver der Technischen Hochschule Brandenburg zu programmieren. Durch die Festlegung der Chiffre auf den Wert 13, konnte daher das ROT13 Verfahren eingebunden werden. 


## Architektur & Aufbau

Für meinen Passwortmanager greife ich auf das Micro-Framework [Bottle](https://github.com/bottlepy/bottle) zurück. Der Grund hierfür ist, dass dies den Zugriff auf Python Module einfacher gestaltet und Python in der Programmierung leichter umsetzbar wäre,
anstatt die Anwendung in JavaScript zu programmieren. 

Der Kern der Anwendung besteht aus der bottle.py-Datei, welche für das Routing, sowie für die zugrundeliegende Logik, welche für die CRUD-Anweisungen zuständig sind.
Diese Datei ist zudem für die Verwaltung der Passwörter zuständig.
Diese erfolgt durch ein Array, welches mehrere Dictonaries entält. Ein Passwort wird mit folgenden Keys initalisiert:



Key | Funktion 
--- | --- 
password | Inhalt des Passwortes.
password_id | Zuordnung zur nachträglichen Identifizierung.<br> Die Initaliserung erfolgt durch eine globale Variable, welche inkrementiert wird.
enrypted| Gibt an, ob ein Passwort bereits verschlüsselt ist. <br> Encrypted wird standardmäßig mit 0 initalisiert.
security_level | Wird durch password_checker.py, unter Verwendung von password initalisiert.

Die Kommunikation zwischen dem Template und der bottle.py-Datei erfolgt über die HTTP-Protokolle GET & POST.


### Design 
Das Design erfolgt durch durch die style.css-Datei. Das Design hierfür stammt aus dem genannten Semesterprojekt und setzt sich durch diverse Vorlagen zusammen, welche für den individuellen Zweck weiter entwicklt und angepasst worden sind.


## Projektdaten
Entwickler: M.-Yousuf Yesil <br>
Entwicklungszeitraum 28.10 - 31.10 <br>
Programmiersprachen: Python <br>
Frameworks: Bottle <br>
Module: Pyperclip


