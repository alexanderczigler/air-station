#!/bin/sh

WORKDIR="/opt/air"

if [ ! -d $WORKDIR/data/ ]; then
  mkdir -p $WORKDIR/data/
fi

# Log data.
log=$WORKDIR/log
sudo pywws-hourly.py -v $HOMEDIR/data >$log 2>&1
LOGDATA=`cat $log`

sudo python -m pywws.Template $WORKDIR/data/ $WORKDIR/json.template $WORKDIR/latest.json
JSONDATA=`cat $WORKDIR/latest.json`

