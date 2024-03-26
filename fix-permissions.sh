sudo find . -type d -exec chmod 775 {} \;
sudo find . -type f -exec chmod 664 {} \;

sudo chmod ug+x fix-permissions.sh
sudo chmod ug+x install-docker.sh
sudo chmod ug+x start.sh
sudo chmod ug+x stop.sh

sudo chown -R www-data:www-data data/htdocs
sudo chown -R 999:www-data data/sql

