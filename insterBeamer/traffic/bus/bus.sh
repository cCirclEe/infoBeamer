#!/bin/bash
echo -e " "$(/opt/insterBeamer/scripts/kvvliveapi.py departures de:8212:3009 2) > /opt/insterBeamer/insterBeamer/traffic/bus/bus.txt
