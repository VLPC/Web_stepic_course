sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/gunicorn.conf
cd /home/box/web && sudo gunicorn -c /home/box/web/etc/gunicorn.conf hello:application

