
# put -r C:/Users/ruonan/Desktop/dist
# nohup java -jar zz.jar &

# nginx -s reload


#reset password and enable remote login
ALTER USER 'root'@'localhost' IDENTIFIED BY 'Xxxx!nnn';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'Xxxx!nnn' WITH GRANT OPTION;
FLUSH PRIVILEGES;

#Install PageSpeed  For Nginx
bash <(curl -f -L -sS https://ngxpagespeed.com/install) \
     --nginx-version latest
