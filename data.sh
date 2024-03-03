#!/bin/bash
sudo yum update -y
sudo yum -y install python3-pip
sudo yum install git -y
git clone https://github.com/03Aziz02/indian-liver-patients-py.git
cd indian-liver-patients-py
pip3 install -r requirements.txt
screen -m -d python3 app.py
