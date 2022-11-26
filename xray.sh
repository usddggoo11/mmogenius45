#!/bin/sh
if [ ! -f UUID ]; then
  UUID="4b2a52e8-2200-4775-86a2-aa68f59dbf89"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

