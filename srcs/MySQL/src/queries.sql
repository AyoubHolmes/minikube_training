CREATE USER 'user'@'%' IDENTIFIED BY 'user';
CREATE DATABASE wordpress;
GRANT ALL ON *.* to 'user'@'%' IDENTIFIED BY 'user';
FLUSH PRIVILEGES;