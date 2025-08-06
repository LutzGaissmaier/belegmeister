# Beleg-Tracker Benutzerhandbuch

## Inhalt
1. [Einführung](#einführung)
2. [Dashboard und Hauptnavigation](#dashboard-und-hauptnavigation)
3. [Belegverwaltung](#belegverwaltung)
4. [Belege scannen und hochladen](#belege-scannen-und-hochladen)
5. [QR-Code Funktionen](#qr-code-funktionen)
6. [Mahnungsverwaltung](#mahnungsverwaltung)
7. [Dienstleisterverwaltung](#dienstleisterverwaltung)
8. [Erstattungsdokumente](#erstattungsdokumente)
9. [Einstellungen](#einstellungen)
10. [Import und Export](#import-und-export)
11. [Mobile Nutzung](#mobile-nutzung)
12. [Häufig gestellte Fragen](#häufig-gestellte-fragen)

## Einführung

Beleg-Tracker ist eine Anwendung zur Verwaltung, Verfolgung und Verarbeitung von Belegen (Rechnungen, Quittungen, etc.). Die Anwendung bietet Funktionen wie OCR-Texterkennung, QR-Code-Generierung für Zahlungen, Mahnungsmanagement und mehr.

### Hauptvorteile
- Zentrale Verwaltung aller Belege
- Automatische Texterkennung aus gescannten Dokumenten
- Einfache Erstellung von Zahlungs-QR-Codes
- Automatisierte Mahnungsverwaltung
- Überwachung von Erstattungsdokumenten

## Dashboard und Hauptnavigation

Nach dem Einloggen gelangen Sie zum Dashboard, das eine Übersicht über wichtige Kennzahlen bietet:
- Anzahl und Gesamtsumme offener Belege
- Anzahl und Gesamtsumme bezahlter Belege
- Ausstehende Mahnungen
- Kürzlich hinzugefügte Belege

Die Hauptnavigation am linken Rand bietet Zugriff auf alle Hauptfunktionen:
- **Belegübersicht**: Liste aller Belege mit Filteroptionen
- **Neu**: Schnellzugriff zum Erstellen neuer Einträge
- **Scan**: Zum Scannen oder Hochladen neuer Belege
- **Mahnungen**: Übersicht über alle Mahnungen
- **Dienstleister**: Verwaltung der Dienstleister
- **Erstattungen**: Verwaltung der Erstattungsdokumente
- **Einstellungen**: Anwendungseinstellungen

## Belegverwaltung

### Belege anzeigen
Die Belegübersicht zeigt alle Belege in tabellarischer Form mit wichtigen Informationen wie Datum, Betrag, Dienstleister und Status. Sie können die Liste filtern und sortieren nach:
- Bezahltstatus (bezahlt/unbezahlt)
- Dienstleister
- Datum (neuste/älteste zuerst)
- Betrag (höchster/niedrigster zuerst)

### Neuen Beleg manuell erstellen
1. Klicken Sie auf "Neu" → "Beleg"
2. Füllen Sie die erforderlichen Felder aus:
   - Dienstleister
   - Rechnungsnummer
   - Datum
   - Betrag
   - Fälligkeitsdatum (optional)
   - Verwendungszweck (optional)
   - IBAN und BIC (optional)
3. Klicken Sie auf "Speichern"

### Beleg bearbeiten
1. Klicken Sie in der Belegübersicht auf das Bearbeiten-Symbol neben dem gewünschten Beleg
2. Ändern Sie die gewünschten Informationen
3. Klicken Sie auf "Speichern"

### Beleg als bezahlt markieren
1. Öffnen Sie die Detailansicht des Belegs
2. Klicken Sie auf die Schaltfläche "Als bezahlt markieren"
3. Optional: Geben Sie das Zahlungsdatum ein (standardmäßig das aktuelle Datum)

### Beleg löschen
1. Öffnen Sie die Detailansicht des Belegs
2. Klicken Sie auf "Löschen"
3. Bestätigen Sie den Löschvorgang

## Belege scannen und hochladen

### PDF-Datei mit OCR hochladen
1. Gehen Sie zu "Neu" → "Beleg scannen/hochladen"
2. Wählen Sie die Datei aus oder ziehen Sie sie per Drag-and-Drop in den Upload-Bereich
3. Klicken Sie auf "Hochladen"
4. Die OCR-Erkennung extrahiert automatisch Informationen wie:
   - Rechnungsnummer
   - Datum
   - Betrag
   - Dienstleister
   - IBAN/BIC
5. Überprüfen und korrigieren Sie die erkannten Daten
6. Klicken Sie auf "Speichern"

### Beleg ohne OCR hochladen
1. Gehen Sie zu "Neu" → "Beleg ohne OCR hochladen"
2. Wählen Sie die Datei aus
3. Füllen Sie die Beleg-Informationen manuell aus
4. Klicken Sie auf "Speichern"

### Mobilgerät als Scanner verwenden
1. Gehen Sie zu "Scan" → "Mobiler Scan"
2. Scannen Sie den QR-Code mit Ihrem Mobilgerät
3. Nehmen Sie ein Foto des Belegs mit der Kamera Ihres Mobilgeräts
4. Die Bilddatei wird hochgeladen und per OCR verarbeitet
5. Überprüfen und bestätigen Sie die Daten auf Ihrem Computer

## QR-Code Funktionen

### Zahlungs-QR-Code erstellen
1. Öffnen Sie die Detailansicht eines unbezahlten Belegs
2. Klicken Sie auf "QR-Code generieren"
3. Der QR-Code enthält alle Zahlungsinformationen (SEPA-Transfer)
4. Sie können den QR-Code drucken oder digital teilen

### QR-Code für einen Dienstleister erstellen
1. Gehen Sie zur Dienstleister-Detailansicht
2. Klicken Sie auf "Kontakt-QR-Code"
3. Der generierte QR-Code enthält die Kontaktinformationen des Dienstleisters

## Mahnungsverwaltung

### Mahnung erstellen
1. Öffnen Sie die Detailansicht eines überfälligen, unbezahlten Belegs
2. Klicken Sie auf "Mahnung erstellen"
3. Wählen Sie die Mahnstufe (1-3)
4. Fügen Sie optional einen individuellen Text hinzu
5. Klicken Sie auf "Mahnung erstellen"
6. Die PDF-Datei der Mahnung wird automatisch generiert

### Mahnungen anzeigen
Die Mahnungsübersicht zeigt alle erstellten Mahnungen mit:
- Zugehörigem Beleg
- Mahnstufe
- Erstellungsdatum
- Status

### Mahnungsstatus aktualisieren
1. Öffnen Sie die Detailansicht einer Mahnung
2. Ändern Sie den Status (Erstellt, Versendet, Bezahlt)
3. Klicken Sie auf "Speichern"

## Dienstleisterverwaltung

### Neuen Dienstleister anlegen
1. Gehen Sie zu "Dienstleister" → "Neu"
2. Geben Sie die erforderlichen Informationen ein:
   - Name
   - Ansprechpartner (optional)
   - Adresse (optional)
   - Kontaktdaten (optional)
   - Zahlungsinformationen (optional)
3. Klicken Sie auf "Speichern"

### Dienstleister bearbeiten
1. Öffnen Sie die Dienstleister-Detailseite
2. Klicken Sie auf "Bearbeiten"
3. Aktualisieren Sie die Informationen
4. Klicken Sie auf "Speichern"

### Belege eines Dienstleisters anzeigen
1. Öffnen Sie die Dienstleister-Detailseite
2. Im Abschnitt "Zugehörige Belege" sehen Sie alle Belege dieses Dienstleisters

## Erstattungsdokumente

### Erstattungsdokument erstellen
1. Gehen Sie zu "Erstattungen" → "Neu"
2. Wählen Sie die zugehörigen Belege aus
3. Geben Sie die erforderlichen Informationen ein:
   - Institution
   - Referenznummer
   - Datum
   - Status
4. Laden Sie optional unterstützende Dokumente hoch
5. Klicken Sie auf "Speichern"

### Erstattungsstatus aktualisieren
1. Öffnen Sie die Detailansicht eines Erstattungsdokuments
2. Ändern Sie den Status (Eingereicht, In Bearbeitung, Erstattet, Abgelehnt)
3. Geben Sie bei Bedarf das Erstattungsdatum und den erstatteten Betrag ein
4. Klicken Sie auf "Speichern"

## Einstellungen

### Allgemeine Einstellungen
- **Standardwerte**: Festlegen von Standardwerten für neue Belege
- **Anzeige**: Anpassen der Anzahl der Einträge pro Seite, Sortierung etc.
- **Mahnungen**: Standard-Mahntexte und Mahngebühren konfigurieren

### Benutzereinstellungen
- Passwort ändern
- E-Mail-Adresse ändern
- Benachrichtigungseinstellungen anpassen

### Systemeinstellungen
- Datenbank-Backup erstellen
- OCR-Parameter anpassen
- Nextcloud-Integration konfigurieren

## Import und Export

### CSV-Import
1. Gehen Sie zu "Einstellungen" → "Import/Export"
2. Wählen Sie "CSV-Import"
3. Laden Sie die CSV-Datei hoch
4. Ordnen Sie die Spalten den entsprechenden Feldern zu
5. Klicken Sie auf "Importieren"

### Daten exportieren
1. Gehen Sie zu "Einstellungen" → "Import/Export"
2. Wählen Sie "Daten exportieren"
3. Wählen Sie das Format (CSV, Excel, PDF)
4. Wählen Sie die zu exportierenden Daten
5. Klicken Sie auf "Exportieren"

## Mobile Nutzung

Die Beleg-Tracker-Anwendung ist vollständig für die mobile Nutzung optimiert:
- Responsive Design für Smartphones und Tablets
- Spezielle Scanfunktion für mobile Geräte
- QR-Code-Leser für mobiles Abrufen von Belegen

## Häufig gestellte Fragen

### Wie genau ist die OCR-Erkennung?
Die OCR-Genauigkeit hängt von der Qualität des Scans/Fotos ab. Bei guter Qualität werden Datum, Betrag und Rechnungsnummer mit über 90% Genauigkeit erkannt. Überprüfen Sie trotzdem immer die erkannten Daten.

### Was passiert, wenn ein Beleg nach Mahnungserstellung bezahlt wird?
Wenn Sie einen Beleg als bezahlt markieren, werden alle zugehörigen offenen Mahnungen automatisch als erledigt markiert.

### Kann ich Beleg-Tracker mit meiner Buchhaltungssoftware verbinden?
Ja, Beleg-Tracker bietet eine API für die Integration mit anderen Systemen. Für Details kontaktieren Sie bitte den Support.

### Wie kann ich Daten sichern?
Gehen Sie zu "Einstellungen" → "Backup" und wählen Sie "Backup erstellen". Die Sicherung enthält alle Daten, einschließlich der hochgeladenen Dateien.

### Werden meine Daten verschlüsselt?
Ja, alle sensiblen Daten werden verschlüsselt gespeichert. Die Kommunikation zwischen Client und Server wird über HTTPS verschlüsselt.