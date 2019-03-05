# mite
This is a simple compilation and setup repository to initialize a client device that is hidden in a network too secure to bypass in normal ways. This technique is badass and protects/obfuscates your stuff really well.

When would you use this program?
This program would be used so that the attacker would have the same amount of access as they would sitting in the living room of their victim with WiFi access. With a device like a raspberry pi, you could use this setup script to have a sophisticated reverse shell inside someone's WiFi network allowing you to attack with mimtm attacks, dns rebind attacks, router exploitation, and many many more powerful attacks. This script is not meant for a tcp > http tunnel that one would normally use because this is specifically made for attacking someone.

How it works:


First, run: sudo chmod +x mite-chisel.sh && sudo ./mite-chisel.sh
Then the dependencies will be downloaded and the config files copied to their file paths.
