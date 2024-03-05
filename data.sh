#!/bin/bash
sudo yum -y update
sudo yum -y install git
git clone https://github.com/03Aziz02/Medical-Insurance-py.git
cd Medical-Insurance-py
pip3 install -r requirements.txt
screen -m -d python3 app.py
