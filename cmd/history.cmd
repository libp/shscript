
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

#learn ln -s  ,if modify conf ,not need modify two dir
ln -s /opt/shscript/conf_file/nginx.conf /etc/nginx/nginx.conf

# add alias gitpush=git push origin master

##start php order 
# service php-fpm restart
