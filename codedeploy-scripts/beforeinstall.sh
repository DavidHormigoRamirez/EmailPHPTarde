#!/bin/bash
mkdir -p /var/www/php
cat << EOF > /etc/apache2/sites-available/php.conf
<VirtualHost *:80>
    DocumentRoot /var/www/php
</VirtualHost>
EOF
a2dissite 000-default
a2ensite php