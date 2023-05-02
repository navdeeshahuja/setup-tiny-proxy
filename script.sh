sudo apt-get update
sudo apt-get -y install tinyproxy

sudo mv /etc/tinyproxy/tinyproxy.conf /etc/tinyproxy/tinyproxy.backup.conf
curl https://raw.githubusercontent.com/navdeeshahuja/setup-tiny-proxy/main/tinyproxy.conf > /etc/tinyproxy/tinyproxy.conf
echo 'BasicAuth username password' >> /etc/tinyproxy/tinyproxy.conf

sudo service tinyproxy restart
sudo service tinyproxy status
