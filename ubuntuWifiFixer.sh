#The exit status is 0 (true) if the name was found, 1 (false) if not, so:
if ! grep -q "Connectivity" /etc/NetworkManager/NetworkManager.conf;
then
    echo [Connectivity] >> /etc/NetworkManager/NetworkManager.conf
    echo uri=http://nmcheck.gnome.org/check_network_status.txt  >> /etc/NetworkManager/NetworkManager.conf
    service network-manager restart
else
    echo "your wifi is already configured check this file for mistakes: /etc/NetworkManager/NetworkManager.conf"
    service network-manager restart

fi