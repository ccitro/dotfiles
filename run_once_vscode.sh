#!/bin/bash

cd /tmp
wget -O vscode.deb "https://go.microsoft.com/fwlink/?LinkID=760868" 
sudo apt install ./vscode.deb
rm ./vscode.deb
