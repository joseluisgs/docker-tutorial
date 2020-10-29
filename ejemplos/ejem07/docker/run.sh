#!/bin/bash
echo "*** Iniciando Dockers ***"

cd mariadb
sh mariadb.sh
echo "MariaDB Lista :)"
cd ..

#cd phpmyadmin
#phpmyadmin.sh
sh phpmyadmin/phpmyadmin.sh 
echo "PHP MyAdmin Listo :)"
#cd ..

cd php
sh php.sh
echo "PHP Listo :)"
cd ..

cd nginx
sh nginx.sh
echo "NGINX Listo :)"
cd ..

echo "*** Fin ***"