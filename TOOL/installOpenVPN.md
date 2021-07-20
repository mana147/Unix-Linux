# OpenVPN setup in Lubuntu 

Install required OpenVPN packages :

```sh
sudo apt-get install -y openvpn network-manager-openvpn network-manager-openvpn-gnome
```
Restart your system.

Click on the Lubuntu button in the bottom left of your screen, select Preferences > Advanced Network Configuration as shown below:

Click the + button as shown below in the Network Connections window to add a new connection.

Choose Import a saved VPN configuration... from the dropdown menu and click the Create button.

Select the config file that matches your desired VPN server location and click the Open button (The naming convention for our config files is ipvanish-COUNTRY-City-server name.ovpn) - For our example, we are using the ipvanish-US-Atlanta-atl-a02.ovpn config file.

In the window that appears, Enter the details as given below in the VPN tab:

- Connection name: Enter your desired description of your VPN connection
- Gateway: Confirm the IPVanish server name is correct (Will match the server name in the name of the config file you chose in step 9)
- Type: Should be set to Password
- User name:  Enter your IPVanish username
- Password: Enter your IPVanish password
- CA certificate: Make sure this shows ca.ipvanish.com.crt
