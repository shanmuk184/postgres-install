wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt update
sudo apt-get install postgresql
sudo -i -u postgres psql -c "ALTER USER postgres with password 'new_password';"
sudo -i -u postgres psql -c "CREATE USER Ubuntu with password 'password';"
sudo -i -u postgres psql -c "CREATE DATABASE Test;"
sudo -i -u postgres psql -c "GRANT ALL PRIVILIGES ON Test TO Ubuntu;"
sudo systemctl stop postgresql
sudo systemctl start postgresql
~
