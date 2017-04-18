#deny all connectons to a port in our own firewall, then we will individually allow access to various ports 
sudo ufw default deny incoming


#allow all outgoing access
sudo ufw default allow outgoing


#allow ssh

sudo ufw allow ssh

sudo ufw allow www


#we can also allow port ranges with ufw .To allow specific range of ports to be allowed for communication

sudo ufw allow 1000:2000/tcp


#enabling the ufw(uncomplicated firewall)

sudo ufw enable



 
