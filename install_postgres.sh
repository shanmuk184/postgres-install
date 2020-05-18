wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" |sudo tee  /etc/apt/sources.list.d/pgdg.list
sudo apt update
sudo apt-get install postgresql-12
sudo -i -u postgres psql -c "ALTER USER postgres with password 'new_password';"
sudo -i -u postgres psql -c "CREATE USER Ubuntu with password 'password';"
sudo -i -u postgres psql -c "CREATE DATABASE Test;"
sudo systemctl stop postgresql
sudo systemctl start postgresql
~
