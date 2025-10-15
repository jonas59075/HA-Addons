#!/usr/bin/env bash\
set -e\
echo "[PRELOAD] Starte /config/preload.sh ..."\
if [ -f /config/preload.sh ]; then\
chmod +x /config/preload.sh\
bash /config/preload.sh\
echo "[PRELOAD] preload.sh erfolgreich ausgef\'fchrt."\
else\
echo "[PRELOAD] /config/preload.sh nicht gefunden!"\
fi}