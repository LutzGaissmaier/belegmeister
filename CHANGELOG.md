# Changelog - Beleg-Tracker

## Version 3.0.0 (2025-05-22)

Diese Version ist eine komplette Neuimplementierung, die die Funktionen von Version 2.1 und der refaktorierten Version kombiniert und erweitert.

### Architekturverbesserungen
- **Neue Anwendungsarchitektur**: Implementierung einer Factory-Funktion für bessere Testbarkeit
- **SQLAlchemy ORM**: Ersatz von rohen SQL-Abfragen durch SQLAlchemy-Modelle
- **Modularer Aufbau**: Aufteilung in Blueprints für bessere Wartbarkeit und Erweiterbarkeit
- **RESTful API**: Vollständige API-Implementierung für alle Funktionalitäten
- **Verbessertes Konfigurations-Management**: Umgebungsspezifische Konfigurationen (Entwicklung, Test, Produktion)
- **CLI-Befehle**: Neue Kommandozeilen-Befehle für administrative Aufgaben

### Neue Funktionen
- **Modernisiertes UI**: Überarbeitetes Frontend mit Bootstrap 5 und responsivem Design
- **Erweiterte QR-Code Funktionalität**: Support für verschiedene QR-Code-Typen
- **Verbesserte Mahnung-Generierung**: Flexible PDF-Erzeugung mit anpassbaren Vorlagen
- **Nextcloud-Integration**: Direkte Synchronisation mit Nextcloud
- **API-Dokumentation**: Interaktive API-Dokumentation mit Swagger
- **Fehlerbehandlung**: Umfassende Fehlerbehandlung und Logging
- **Internationalisierung**: Vorbereitung für mehrsprachige Unterstützung

### Technische Verbesserungen
- **Sicherheitsverbesserungen**: CSRF-Schutz, verbesserte Validierung und Eingabeprüfung
- **Testing-Framework**: Umfassende Test-Suite mit Unit-, Integrations- und funktionalen Tests
- **Verbesserte OCR**: Robustere Texterkennung mit erweiterten Extraktionsfunktionen
- **Erweiterte Datenvalidierung**: Input-Validierung auf Server- und Client-Seite
- **Speicheroptimierung**: Effizientere Verarbeitung von großen PDF-Dateien
- **Caching**: Implementierung von Caching für häufig abgefragte Daten

### Migration und Kompatibilität
- **Datenbank-Migration**: Automatische Migration von alten zu neuen Datenbankstrukturen
- **Kompatibilitätsschicht**: Unterstützung älterer API-Endpunkte für Abwärtskompatibilität
- **Dateiformat-Konvertierung**: Automatische Konvertierung alter Dateiformate

### Bugfixes
- Behebung zahlreicher Fehler bei der Beleg-Erfassung und -Verarbeitung
- Korrektur von Datums- und Zeitzonenberechnungen
- Behebung von Speicherlecks und Performanceproblemen
- Korrektur von Rendering-Problemen in verschiedenen Browsern

## Version 2.1 (2025-03-15)

### Neue Funktionen
- OCR-Texterkennung für PDF-Dokumente
- Mahnungsgenerierung
- Erstattungsdokumente-Verwaltung
- CSV-Import/Export
- QR-Code-Generierung für Zahlungen

### Verbesserungen
- Überarbeitete Benutzeroberfläche
- Verbesserte Suche und Filterung
- Erweitertes Reporting
- Responsive Design für mobile Geräte

## Version 1.0 (2024-11-10)

### Initiale Version
- Grundlegende Beleg-Verwaltung
- Einfache Datenbank-Speicherung
- PDF-Upload
- Einfache Filterung und Suche