wget -v "https://discord.com/api/download?platform=linux&format=deb" -O "discord-deb.deb"
wget -v "https://download.opera.com/download/get/?id=65262&location=415&nothanks=yes&sub=marine&utm_tryagain=yes" -O "opera-stable_deb.deb"
# (Wget applications)
sudo dpkg -i opera-stable_* 
sudo dpkg -i discord-* 
rm opera-stable*
rm discord-*
cd ~/Go/Config
./goconfig.sh
./gomods.sh
cd ~
sudo apt-get install figlet -y
sudo apt-get install lolcat -y
sudo apt-get install terminator -y
sudo apt-get install hping3 -y
cd Desktop
sudo apt-get install gcc
cd ~
#End of Tox Setup
sudo apt-get install webhttrack -y
sudo apt install snapd -y
sudo snap install core
sudo snap install gephi
#(For etc installs)
sudo apt-get full-upgrade -y
# Uncomment if setting up Kali Linux Server 
sudo apt install -y kali-linux-everything
sudo apt autoremove
