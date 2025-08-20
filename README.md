# Owlibou Tavern

Ein flexibles Management-Tool für Tabletop-RPGs (TTRPG), mit dem du Kampagnen-, Welt- und Spieldaten zentral verwaltest. Im Frontend kannst du Daten aus der Datenbank komfortabel anlegen, bearbeiten, importieren und exportieren – ideal für Spielleitungen, Weltbauer:innen und Orga-Teams.

## Ziele und Nutzen
- Einheitliche Verwaltung von TTRPG-Daten wie Charaktere, NSCs, Orte, Items, Quests, Regeln und Sessions.
- Datenpflege direkt im Browser mit validierten Formularen und Listenansichten.
- Revisionssichere Änderungen sowie Import/Export für Backups, Systemwechsel oder öffentliche Datenpakete.
- Erweiterbar und systemagnostisch: nutzbar für verschiedene TTRPG-Systeme und Hausregeln.

## Hauptfunktionen (geplant/initial)
- Datenverwaltung
    - CRUD für zentrale Entitäten (z. B. Charaktere, Orte, Items, Quests, Sessions)
    - Tagging, Relationen und Referenzen (z. B. Item gehört zu Charakter, Quest findet in Ort statt)
    - Versionierung/Änderungshistorie (optional)
- Import/Export
    - JSON- und CSV-Importe mit Mapping/Validierung
    - JSON- und CSV-Exporte (vollständig oder gefiltert)
    - Vorlagen für gängige Datenstrukturen
- Qualität und Sicherheit
    - Validierungen, Duplikat-Erkennung, Konfliktauflösungen beim Import
    - Rollen-/Rechtekonzept für Lesende/Schreibende (optional)
- UX
    - Filter, Suche, Sortierung, Paginierung
    - Bulk-Aktionen (z. B. Massen-Tagging, Sammellöschung mit Undo)

## Architekturüberblick
- Frontend
    - Web-App zur Verwaltung, Visualisierung und zum Import/Export von Daten
    - Formulare mit Validierung, Listenansichten, Detailseiten
- API/Backend
    - Endpunkte für CRUD, Batch-Operationen, Import/Export und Authentifizierung
    - Datenvalidierung serverseitig und konfliktarme Merges bei Importen
- Datenbank
    - Relational oder dokumentenorientiert, je nach finalem Design
    - Migrationskonzept, Seeds und Beispiel-Datasets
- Authentifizierung/Autorisierung (optional)
    - Nutzerkonten, Rollen, API-Tokens

Hinweis: Die konkrete Technologieauswahl kann projektabhängig variieren. Dieses README bleibt bewusst technologie-agnostisch.

## Datenmodell (Beispiel-Ideen)
- Kern-Entitäten: Character, NPC, Location, Item, Quest, Session, Faction, Rule
- Relationen: Character—Item (1:n), Location—Quest (n:m), Session—Participant (n:m)
- Metadaten: Tags, Notizen, Quellenangaben, Zeitstempel, Besitzer:in

## Import/Export
- Formate
    - JSON: vollständige Strukturen inkl. Relationen
    - CSV: tabellarische Views je Entität
- Import-Workflow
    - Vorschau mit Validierungsfehlern und Warnungen
    - Mapping-Assistent (z. B. Spaltenzuordnung bei CSV)
    - Konflikt-Strategien: Überschreiben, Zusammenführen, Duplikate überspringen
- Export-Workflow
    - Auswahl von Entitäten/Filtern, optional Anonymisierung bestimmter Felder
    - Versionierte Exporte als Backup

## Entwicklungs-Setup
- Voraussetzungen
    - Git, eine aktuelle Laufzeitumgebung für Frontend/Backend, Paketmanager, Datenbank-Server
- Quickstart (generisch)
    1. Repository klonen
    2. Umgebungsvariablen konfigurieren (z. B. DB-URL, Ports, Auth-Secret)
    3. Abhängigkeiten installieren
    4. Datenbank migrieren und Seed-Daten einspielen (optional)
    5. Entwicklungsserver starten (Frontend und Backend)
- Skripte (Platzhalter)
    - start-dev: Startet Frontend und Backend im Watch-Modus
    - migrate: Führt Datenbankmigrationen aus
    - seed: Spielt Beispiel-/Demo-Daten ein
    - test: Führt Tests aus
    - build: Erzeugt produktionsfertige Artefakte

Füge konkrete Befehle hinzu, sobald die Technologie-Stacks final sind.

## Deployment (Beispielfluss)
- Konfiguration über Umgebungsvariablen/Secrets
- Datenbank bereitstellen und Migrationen ausführen
- Backend deployen
- Frontend als statische App oder über denselben Server ausliefern
- Optional: Containerisierung und Orchestrierung

## Qualitätssicherung
- Tests: Unit-, Integrations- und E2E-Tests für Import/Export und CRUD
- Linting/Formatting und CI-Pipelines
- Backups: regelmäßige Exporte und DB-Snapshots

## Roadmap (Entwurf)
- M0: Basis-CRUD für zentrale Entitäten, einfache JSON-Exporte
- M1: CSV-Importe mit Mapping + Validierung, Filter/Suche im UI
- M2: Relationen-Management im UI, Konfliktauflösung beim Import
- M3: Rollen/Rechte, Änderungsverlauf, Bulk-Aktionen
- M4: Plugins/Erweiterungen für system-spezifische Felder und Regelwerke

## Beitragen
- Issues eröffnen: Bugreports, Featurewünsche, Fragen
- Pull Requests: Bitte mit kurzer Beschreibung, Repro-Schritten und Tests
- Coding Guidelines: Einheitlicher Stil, aussagekräftige Commits

## Lizenz
- AGPLv3

## Kontakt
- Projektpflege: bitte Kontaktmethode/Team hinzufügen
- Diskussionen/Ideen: Issue-Tracker oder Diskussionsforum verwenden

Viel Spaß beim Bauen deiner TTRPG-Welt mit Owlibou Tavern!
