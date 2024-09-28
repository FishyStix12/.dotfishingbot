#!/bin/bash
#################################################################################################
# Author: Nicholas Fisher
# Date: March 2nd, 2024
# Description of Script
#  The script is designed to set up a Python development environment on Kali Linux for ethical 
# hacking purposes. It updates system packages, installs necessary system libraries, 
# and then proceeds to install various Python libraries commonly used by ethical hackers. 
# These libraries include tools for network scanning (scapy, nmap), web scraping and parsing 
# (beautifulsoup4, lxml), interacting with GitHub (github3.py), handling encryption and encoding
# (base64, pycryptodomex), sending emails (smtplib), working with Windows hooks (pywin32, 
# pywinhook), and more.
# Please install the swig tool before running this script using the command below:
# sudo apt-get install swig
#################################################################################################

# Exit immediately if a command exits with a non-zero status
set -e

# Update system packages
echo "Updating system packages..."
sudo apt update
sudo apt upgrade -y

# Install necessary system libraries
echo "Installing necessary system libraries..."
sudo apt install -y libpcap-dev libffi-dev libpython3-dev python3-xlib swig

# Upgrade pip and install Python libraries
echo "Installing Python and pip..."
sudo apt install -y python3 python3-pip

# Upgrade pip to the latest version
pip3 install --upgrade pip

# Install Python libraries
echo "Installing Python libraries..."
pip3 install scapy python-nmap requests lxml beautifulsoup4 github3.py pycryptodomex \
  pywin32 pywinhook Pillow Flask certifi itsdangerous colorama wmi click Werkzeug \
  MarkupSafe Jinja2 psutil pynput

# Additional installation of cryptography if needed
echo "Installing cryptography..."
pip3 install cryptography

echo "Python Library Configuration Complete!"

pip3 install pywinhook
pip3 install pynput
echo "Python Library Configuration Complete!"

