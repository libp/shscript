
# put -r C:/Users/ruonan/Desktop/dist
# nohup java -jar zz.jar &

# nginx -s reload

#reset password and enable remote login
ALTER USER 'root'@'localhost' IDENTIFIED BY 'Xxxx!nnn';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'Xxxx!nnn' WITH GRANT OPTION;
FLUSH PRIVILEGES;
