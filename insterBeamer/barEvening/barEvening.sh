#!/bin/bash
ssh david@hhiftp "python /var/www/createEvents/barEvening.py" > barEvening.txt
rm -rf event1*
wget $(tail -n +3 barEvening.txt)
