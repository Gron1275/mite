# mite
This is a simple compilation and setup repository to initialize a client device that is hidden in a network too secure to bypass in normal ways. This technique is badass and protects/obfuscates your stuff really well.

HOW I USE THIS PROGRAM
I use this program in order to drop into others wifi networks remotely. This can also be used Post-Exploitation bc Go-lang is retty easy and socat has cool binaries. With this attack you don't have to know the IP of the device in the network (It's a reverse shell duh)

When would you use this program?
This program would be used so that the attacker would have the same amount of access as they would sitting in the living room of their victim with WiFi access. With a device like a raspberry pi, you could use this setup script to have a sophisticated reverse shell inside someone's WiFi network allowing you to attack with mimtm attacks, dns rebind attacks, router exploitation, and many many more powerful attacks. This script is not meant for a tcp > http tunnel that one would normally use because this is specifically made for attacking someone.

How it works:
There are two active parts to this technique. The reverse shell and the HTTP Tunnel. The HTTP Tunnel links the remote server's chosen port [yourremoteserver:443 ==> 0.0.0.0:443] to one of your own. The reverse shell is pointed towards 0.0.0.0:443 and comes out on yourremoteserver:443. You then have a Socat listener (tcp) waiting to accept from port 443. The setup script migrates the two scripts that loop the tunnel/rev-shell to the /etc/network/if-up.d directory so that every time an internet connection is detected, the two scripts run triggering the connection to be made.

Installation

First, run: sudo chmod +x mite-chisel.sh && sudo ./mite-chisel.sh
Then the dependencies will be downloaded and the config files copied to their file paths.

YOU MUST HAVE ANOTHER COMPUTER CAPABLE OF RUNNING SOCAT AND CHISEL IN ORDER TO CAPTURE THE SHELL THAT IS SENT!!!
