#!/usr/bin/with-contenv sh
echo "🔁 Preload-Init gestartet ..."

TRIES=0
while [ ! -f /config/preload.sh ] && [ $TRIES -lt 10 ]; do
  echo "⏳ preload.sh noch nicht verfügbar, versuche erneut..."
  sleep 3
  TRIES=$((TRIES+1))
done

if [ -f /config/preload.sh ]; then
  chmod +x /config/preload.sh
  /bin/sh /config/preload.sh
  echo "✅ preload.sh erfolgreich ausgeführt."
else
  echo "❌ preload.sh nach 30 Sekunden immer noch nicht vorhanden!"
fi
