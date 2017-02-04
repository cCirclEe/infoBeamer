rsync -a david@hhiftp:/var/www/insterBeamer/aktuelleInfos.txt /opt/insterBeamer/insterBeamer/infos/aktuelleInfos.txt
sed -i '$ d' /opt/insterBeamer/insterBeamer/infos/aktuelleInfos.txt 
