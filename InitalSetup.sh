#bash
wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
echo deb https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list
sudo apt install software-properties-common
sudo add-apt-repository ppa:certbot/certbot
sudo apt-get update && apt-get upgrade -y
sudo apt install -y openjdk-8-jre jenkins nginx python-certbot-nginx libssl-dev libffi-dev python-dev python-pip docker git
sudo ufw allow OpenSSH
sudo ufw allow 'Nginx Full'
sudo ufw enable
sudo ufw app list
sudo ufw status

# sudo certbot --nginx -d devops.ck99.io
# sudo certbot renew --dry-run
# sudo nano /etc/nginx/sites-available/default
# sudo nano /etc/default/jenkins
sudo systemctl reload nginx
sudo systemctl restart jenkins
sudo systemctl status jenkins
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
