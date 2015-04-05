#!/bin/sh

WORKDIR="/opt/air"

if [ ! -d $WORKDIR/data/ ]; then
  mkdir -p $WORKDIR/data/
fi

sudo pywws-hourly.py -v $WORKDIR/data > $WORKDIR/read.log 2>&1
sudo python -m pywws.Template $WORKDIR/data/ $WORKDIR/json.template $WORKDIR/latest.json

node index.js