#!/bin/bash
sudo apt update &&
sudo apt-get install -y mongodb &&
sudo systemctl start mongodb &&
sudo systemctl enable mongodb &&
