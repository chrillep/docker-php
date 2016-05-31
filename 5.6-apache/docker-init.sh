#! /bin/bash

# Run before script if exists.
if [ -f ./scripts/docker/before-apache.sh ]; then
	./scripts/docker/before-apache.sh
fi

sed -i "s#^DocumentRoot /var/www/html\$#DocumentRoot $SITEPATH#" /etc/apache2/apache2.conf
echo "Replaced document root with $SITEPATH"
apache2-foreground