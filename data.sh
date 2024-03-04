#!/bin/bash
sudo yum -y update
sudo yum -y install git
git clone https://github.com/03Aziz02/MyFuel-py.git
cd MyFuel-py
pip3 install -r requirements.txt
screen -m -d python3 app.py
