#!/usr/bin/with-contenv sh
echo "🔁 Preload-Init gestartet ..."

if [ -f /config/preload.sh ]; then
    chmod +x /config/preload.sh
    /bin/sh /config/preload.sh
else
    echo "⚠️  /config/preload.sh nicht gefunden."
fi

echo "✅ Preload abgeschlossen."
