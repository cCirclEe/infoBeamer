#!/bin/bash
echo $(date +%a", "%e"."%m"."%y)": " > /opt/insterBeamer/insterBeamer/weather/day.txt 
echo $(date +%a", "%e"."%m"."%y --date="+1 day")": " >> /opt/insterBeamer/insterBeamer/weather/day.txt
echo $(date +%a", "%e"."%m"."%y --date="+2 day")": " >> /opt/insterBeamer/insterBeamer/weather/day.txt
echo $(date +%a", "%e"."%m"."%y --date="+3 day")": " >> /opt/insterBeamer/insterBeamer/weather/day.txt
echo $(date +%a", "%e"."%m"."%y --date="+4 day")": " >> /opt/insterBeamer/insterBeamer/weather/day.txt
echo $(date +%a", "%e"."%m"."%y --date="+5 day")": " >> /opt/insterBeamer/insterBeamer/weather/day.txt
echo $(date +%a", "%e"."%m"."%y --date="+6 day")": " >> /opt/insterBeamer/insterBeamer/weather/day.txt
