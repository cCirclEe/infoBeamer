#!/bin/bash
echo -e " "$(/opt/kvvliveapi/kvvliveapi.py departures de:8212:408 1) > /opt/insterBeamer/insterBeamer/traffic/tram/tram.txt
sed -i '$ d' /opt/insterBeamer/insterBeamer/traffic/tram/tram.txt
