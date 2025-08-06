# Beleg-Tracker Installationsanleitung

Diese Anleitung führt Sie durch den Prozess der Installation und Konfiguration des Beleg-Tracker-Systems.

## Systemvoraussetzungen

### Hardware
- Mindestens 2 GB RAM
- Mindestens 1 GB freier Festplattenspeicher

### Software
- Python 3.9 oder höher
- pip (Python-Paketmanager)
- Optional: Tesseract OCR für die Texterkennung von Belegen
- Optional: Git zum Klonen des Repositories

## Installationsschritte

### 1. Python-Umgebung einrichten

#### Python installieren
Falls noch nicht geschehen, laden Sie Python von [python.org](https://www.python.org/downloads/) herunter und installieren Sie es. Stellen Sie sicher, dass Python zum PATH hinzugefügt wird.

Überprüfen Sie die Python-Installation mit:
```bash
python --version
```

#### Virtuelle Umgebung erstellen
Es wird empfohlen, eine virtuelle Umgebung zu erstellen, um Konflikte mit anderen Python-Projekten zu vermeiden:

```bash
# Virtuelle Umgebung erstellen
python -m venv venv

# Virtuelle Umgebung aktivieren
# Unter Linux/macOS:
source venv/bin/activate
# Unter Windows:
venv\Scripts\activate
```

### 2. Beleg-Tracker herunterladen

#### Option 1: Mit Git klonen
```bash
git clone https://[repository-url]/beleg-tracker.git
cd beleg-tracker
```

#### Option 2: ZIP-Archiv herunterladen und entpacken
Laden Sie das ZIP-Archiv von [repository-url] herunter und entpacken Sie es in einen geeigneten Ordner.

### 3. Abhängigkeiten installieren

```bash
pip install -r requirements.txt
```

### 4. Konfigurationsdatei erstellen

Erstellen Sie eine Konfigurationsdatei mit dem bereitgestellten Befehl:

```bash
python run.py config --init
```

Dieser Befehl erstellt eine Basiskonfiguration in `instance/config.ini`. Sie können diese Datei nach Bedarf anpassen.

### 5. Tesseract OCR installieren (optional)

Für die OCR-Funktionalität wird Tesseract OCR benötigt:

#### Windows
1. Laden Sie den [Tesseract-Installer](https://github.com/UB-Mannheim/tesseract/wiki) herunter
2. Führen Sie die Installation durch und merken Sie sich den Installationspfad
3. Aktualisieren Sie den Tesseract-Pfad in der Konfigurationsdatei (`instance/config.ini`)

#### Linux (Debian/Ubuntu)
```bash
sudo apt-get update
sudo apt-get install tesseract-ocr
sudo apt-get install tesseract-ocr-deu  # Für Deutsch
```

#### macOS
```bash
brew install tesseract
brew install tesseract-lang  # Für zusätzliche Sprachen
```

### 6. Datenbank initialisieren

Initialisieren Sie die Datenbank mit dem folgenden Befehl:

```bash
python run.py init-db
```

Wenn Sie Testdaten hinzufügen möchten:

```bash
python run.py add-test-data
```

### 7. Verzeichnisberechtigungen überprüfen

Stellen Sie sicher, dass die Anwendung Schreibzugriff auf die folgenden Verzeichnisse hat:

- `data/`
- `logs/`
- `instance/`

### 8. Anwendung starten

Starten Sie die Anwendung mit:

```bash
python run.py
```

Der Server läuft standardmäßig auf `http://localhost:5001`. Öffnen Sie diese URL in Ihrem Browser.

## Produktionsumgebung

Für eine Produktionsumgebung werden folgende zusätzliche Schritte empfohlen:

### WSGI-Server verwenden

Installieren Sie gunicorn (Linux/macOS) oder waitress (Windows):

```bash
# Linux/macOS
pip install gunicorn

# Windows
pip install waitress
```

Starten der Anwendung mit WSGI-Server:

```bash
# Linux/macOS
gunicorn -w 4 -b 0.0.0.0:5001 'main:create_app()'

# Windows
waitress-serve --port=5001 main:create_app
```

### Reverse Proxy einrichten

Für eine sichere Produktionsumgebung empfehlen wir, einen Reverse Proxy wie Nginx oder Apache vor dem Beleg-Tracker zu betreiben.

#### Beispiel Nginx-Konfiguration
```
server {
    listen 80;
    server_name beleg-tracker.example.com;

    location / {
        proxy_pass http://localhost:5001;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
    }
}
```

### Systemd-Service (Linux)

Erstellen Sie eine systemd-Service-Datei für automatische Starts:

```
[Unit]
Description=Beleg-Tracker Service
After=network.target

[Service]
User=www-data
WorkingDirectory=/pfad/zu/beleg-tracker
ExecStart=/pfad/zu/beleg-tracker/venv/bin/gunicorn -w 4 -b 0.0.0.0:5001 'main:create_app()'
Restart=always

[Install]
WantedBy=multi-user.target
```

## Fehlerbehebung

### Datenbank-Fehler
- Wenn die Datenbank nicht initialisiert werden kann, überprüfen Sie die Schreibrechte im `instance`-Verzeichnis.
- Bei Problemen mit der Datenbankmigration, sichern Sie Ihre Daten und führen Sie `python run.py init-db` erneut aus.

### OCR-Fehler
- Stellen Sie sicher, dass Tesseract OCR korrekt installiert ist.
- Überprüfen Sie den Tesseract-Pfad in der Konfigurationsdatei.
- Tesseract-Version überprüfen: `tesseract --version`

### Verbindungsprobleme
- Überprüfen Sie Firewall-Einstellungen, wenn der Server von anderen Geräten nicht erreichbar ist.
- Der Server muss auf `0.0.0.0` (statt `localhost`) laufen, um von anderen Geräten im Netzwerk erreichbar zu sein.

## Support

Bei Problemen oder Fragen kontaktieren Sie uns unter:
- E-Mail: [support-email]
- Telefon: [support-telefon]