#!/bin/bash

echo "🎯 Starte BelegMeister v1.0..."
echo ""

# Aktiviere virtuelle Umgebung falls vorhanden
if [ -d "venv" ]; then
    source venv/bin/activate
fi

# Starte BelegMeister
PORT=5031 python3 medical_receipt_tracker.py 