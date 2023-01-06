#!/bin/sh
if [ ! -f UUID ]; then
  UUID="314e81da-2ebb-4fe9-ab74-6a8435bc824e"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

