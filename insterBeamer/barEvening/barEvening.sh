#!/bin/bash
ssh david@hhiftp "python /var/www/createEvents/barEvening.py" > /opt/insterBeamer/insterBeamer/barEvening/barEvening.txt
rm /opt/insterBeamer/insterBeamer/barEvening/img/event.jpg
rm /opt/insterBeamer/insterBeamer/barEvening/img/event.jpeg
rm /opt/insterBeamer/insterBeamer/barEvening/img/event.png

wget -P img/ $(tail -n +3 barEvening.txt)

mv /opt/insterBeamer/insterBeamer/barEvening/img/*.jpg /opt/insterBeamer/insterBeamer/barEvening/img/event.jpg
mv /opt/insterBeamer/insterBeamer/barEvening/img/*.jpeg /opt/insterBeamer/insterBeamer/barEvening/img/event.jpeg
mv /opt/insterBeamer/insterBeamer/barEvening/img/*.png /opt/insterBeamer/insterBeamer/barEvening/img/event.png
