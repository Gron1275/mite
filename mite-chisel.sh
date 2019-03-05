#!/bin/bash
echo Created by: Gron1275
echo
echo installing and compiling files
go get github.com/jpillora/chisel && go build ~/go/src/github.com/jpillora/chisel && go install ~/go/src/github.com/jpillora/chisel
curl https://i.jpillora.com/chisel! | bash
sudo chmod u+x socat-chisel && sudo cp socat-chisel /usr/local/bin
sudo chmod u+x socat-tunnel && sudo cp socat-tunnel /usr/local/bin
sudo chmod u+x chisel-init && sudo cp chisel-init /etc/network/if-up.d
sudo chmod u+x socat-init && sudo cp socat-init /etc/network/if-up.d
echo "Make sure to edit the socat-tunnel file and change the server to your own!!"
