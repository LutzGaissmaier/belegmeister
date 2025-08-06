# BelegMeister Dockerfile
FROM python:3.11-slim

# Setze Arbeitsverzeichnis
WORKDIR /app

# Installiere System-Abhängigkeiten für OCR
RUN apt-get update && apt-get install -y \
    tesseract-ocr \
    tesseract-ocr-deu \
    poppler-utils \
    && rm -rf /var/lib/apt/lists/*

# Kopiere Requirements und installiere Python-Abhängigkeiten
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Kopiere Anwendung
COPY medical_receipt_tracker.py .
COPY VERSION.txt .

# Erstelle notwendige Verzeichnisse
RUN mkdir -p uploads receipts reimbursements logs tmp

# Setze Umgebungsvariablen
ENV FLASK_APP=medical_receipt_tracker.py
ENV FLASK_ENV=production
ENV PORT=5000

# Exponiere Port
EXPOSE 5000

# Health Check
HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 \
    CMD curl -f http://localhost:5000/ || exit 1

# Starte Anwendung
CMD ["python", "medical_receipt_tracker.py"]