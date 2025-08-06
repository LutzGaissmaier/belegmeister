#!/bin/bash
# Skript zum Erstellen eines Release-Pakets für Beleg-Tracker

set -e  # Bei Fehlern sofort beenden

# Banner
echo "=================================================="
echo "       Beleg-Tracker Release-Paket erstellen      "
echo "=================================================="
echo ""

# Parameter
VERSION=$(cat VERSION.txt)
RELEASE_DIR="dist"
PKG_NAME="beleg-tracker-${VERSION}"
PKG_DIR="${RELEASE_DIR}/${PKG_NAME}"
ZIP_FILE="${RELEASE_DIR}/${PKG_NAME}.zip"

# Erstelle Verzeichnisse
echo "Erstelle Verzeichnisstruktur..."
mkdir -p "${PKG_DIR}"

# Dateien kopieren
echo "Kopiere Dateien..."

# Kopiere alle notwendigen Dateien
cp -r app "${PKG_DIR}/"
cp -r config "${PKG_DIR}/"
mkdir -p "${PKG_DIR}/data"
mkdir -p "${PKG_DIR}/data/belege_pdfs"
mkdir -p "${PKG_DIR}/data/mahnung_pdfs"
mkdir -p "${PKG_DIR}/data/reimbursement_docs"
mkdir -p "${PKG_DIR}/data/uploads"
mkdir -p "${PKG_DIR}/instance"
mkdir -p "${PKG_DIR}/logs"

# Kopiere wichtige Dateien im Root-Verzeichnis
cp CHANGELOG.md "${PKG_DIR}/"
cp INSTALL.md "${PKG_DIR}/"
cp USER_GUIDE.md "${PKG_DIR}/"
cp README.md "${PKG_DIR}/"
cp VERSION.txt "${PKG_DIR}/"
cp FINAL_REPORT.md "${PKG_DIR}/"
cp requirements.txt "${PKG_DIR}/"
cp setup.py "${PKG_DIR}/"
cp main.py "${PKG_DIR}/"
cp run.py "${PKG_DIR}/"
cp install.sh "${PKG_DIR}/"
cp install.bat "${PKG_DIR}/"
cp start.sh "${PKG_DIR}/"
cp start.bat "${PKG_DIR}/"

# Erstelle .gitignore-Datei für das Release-Paket
cat > "${PKG_DIR}/.gitignore" << EOF
__pycache__/
*.py[cod]
*$py.class
*.so
.env
.venv
env/
venv/
ENV/
instance/
logs/*.log
data/uploads/*
data/belege_pdfs/*
data/mahnung_pdfs/*
data/reimbursement_docs/*
!data/uploads/.gitkeep
!data/belege_pdfs/.gitkeep
!data/mahnung_pdfs/.gitkeep
!data/reimbursement_docs/.gitkeep
EOF

# Erstelle Platzhalter-Dateien, damit leere Verzeichnisse in Git bleiben
touch "${PKG_DIR}/data/uploads/.gitkeep"
touch "${PKG_DIR}/data/belege_pdfs/.gitkeep"
touch "${PKG_DIR}/data/mahnung_pdfs/.gitkeep"
touch "${PKG_DIR}/data/reimbursement_docs/.gitkeep"
touch "${PKG_DIR}/logs/.gitkeep"

# Erstelle ZIP-Archiv
echo "Erstelle ZIP-Archiv: ${ZIP_FILE}..."
cd "${RELEASE_DIR}"
zip -r "${PKG_NAME}.zip" "${PKG_NAME}" > /dev/null

echo ""
echo "=================================================="
echo "         Release-Paket wurde erstellt!            "
echo "=================================================="
echo ""
echo "Paket: ${ZIP_FILE}"
echo "Größe: $(du -h ${ZIP_FILE} | cut -f1)"
echo ""
echo "Verwenden Sie dieses Paket zur Distribution der Anwendung."
echo "Benutzer können die Installation mit install.sh (Linux/macOS)"
echo "oder install.bat (Windows) durchführen."