#!/bin/bash

#use e.g with that script: MySensor.sh 
#!/bin/bash
#DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
#$DIR/LYWSD03MMC.py -d <device> -2p -p2 75 -o2 -4 -p1 33 -o1 -6 -b 5 -r --name MySensor --callback sendToInflux.sh


curl -i -u "user:pass" -XPOST http://<host>/write?db=openhab_db --data-binary "AquaraBluetoothSensors,sensorname=$2 temperature=$3,humidity=$4,calibratedHumidity=$5,batterylevel=$6"
