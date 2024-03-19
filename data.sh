#!/bin/bash
sudo yum -y update
sudo yum -y install git
git clone https://github.com/sweety-shree/Portfolio.git
cd Portfolio
pip3 install -r requirements.txt
screen -m -d python3 app.py
