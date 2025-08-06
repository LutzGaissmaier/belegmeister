# Beleg-Tracker Installationspaket

## Inhalt

Dieses Paket enthält die Beleg-Tracker-Anwendung Version 3.0.0, eine umfassende Lösung zur Verwaltung, Verfolgung und Verarbeitung von Belegen.

## Schnellinstallation

### Windows

1. Entpacken Sie das ZIP-Archiv an einen beliebigen Ort.
2. Doppelklicken Sie auf `install.bat` im entpackten Verzeichnis.
3. Folgen Sie den Anweisungen auf dem Bildschirm.
4. Nach Abschluss der Installation können Sie die Anwendung über die erstellte Desktop-Verknüpfung oder die Batch-Datei `start_beleg_tracker.bat` starten.

### Linux/macOS

1. Entpacken Sie das ZIP-Archiv an einen beliebigen Ort.
2. Öffnen Sie ein Terminal und navigieren Sie zum entpackten Verzeichnis.
3. Führen Sie den folgenden Befehl aus, um die Installationsdatei ausführbar zu machen:
   ```bash
   chmod +x install.sh
   ```
4. Starten Sie die Installation:
   ```bash
   ./install.sh
   ```
5. Folgen Sie den Anweisungen auf dem Bildschirm.
6. Nach Abschluss der Installation können Sie die Anwendung mit dem Befehl `beleg-tracker run` starten.

## Systemvoraussetzungen

- **Python**: Version 3.9 oder höher
- **Speicherplatz**: Mindestens 200 MB freier Festplattenspeicher
- **Optionale Abhängigkeiten**:
  - **Tesseract OCR**: Für die OCR-Funktionalität (Texterkennung)
  - **ReportLab**: Für die PDF-Generierung (wird automatisch installiert)

## Erweiterte Installation

Für eine fortgeschrittene Installation oder spezielle Konfigurationen siehe die [ausführliche Installationsanleitung](INSTALL.md).

## Dokumentation

- [Benutzerhandbuch](USER_GUIDE.md): Umfassende Informationen zur Nutzung der Anwendung
- [Änderungsprotokoll](CHANGELOG.md): Liste der Änderungen und neuen Funktionen

## Support

Bei Problemen oder Fragen:
1. Sehen Sie in die Dokumentation, insbesondere die häufig gestellten Fragen im Benutzerhandbuch.
2. Überprüfen Sie die Logdateien im `logs`-Verzeichnis.
3. Kontaktieren Sie den Support unter [support-email@example.com].

## Deinstallation

### Windows
1. Entfernen Sie das Installationsverzeichnis (standardmäßig `%APPDATA%\beleg-tracker`).
2. Löschen Sie die Desktop-Verknüpfung.

### Linux/macOS
1. Entfernen Sie das Installationsverzeichnis (standardmäßig `~/.beleg-tracker`).
2. Entfernen Sie die Verknüpfung in `~/.local/bin/beleg-tracker`, falls vorhanden.