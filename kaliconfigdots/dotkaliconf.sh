sudo apt-get update
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
sudo apt-get install python-requests
sudo apt-get install python-dnspython
sudo apt-get install python-argparse
sudo apt-get install figlet -y
sudo apt-get install lolcat -y
sudo apt-get install terminator -y
apt-get install swig
sudo apt-get install hping3 -y
sudo apt update && sudo apt install ruby python python-pip python3 python3-pip
sudo apt install httrack whatweb
cd Desktop
sudo apt-get install gcc
sudo apt-get install swig
cd ~
./Python/PyLib/pylib_config.sh
sudo apt-get install webhttrack -y
sudo apt install snapd -y
sudo snap install core
sudo snap install gephi
chmod +x *
#(For etc installs)
sudo apt-get full-upgrade -y
# Uncomment if setting up Kali Linux Server 
sudo apt install -y kali-linux-everything
sudo apt autoremove
cd ~/Python/ #for uploading python repositories to the source.
wget -v "https://github.com/topotam/PetitPotam.git" -O "PetitPotam_Hijacking_Attack"
wget -v "https://github.com/fortra/impacket.git" -O "Impacket_for_PetitPotam"
chmod +x Impacket_for_PetitPotam/*
chmod +x PetitPotam_Hijacking_Attack/*
cd ~/Downloads
wget https://raw.githubusercontent.com/FishyStix12/ConfigFisherDebian/main/1339284.jpeg
wget https://raw.githubusercontent.com/FishyStix12/ConfigFisherDebian/main/Darkshark24Themes.sh
cd ~
#Tox setup
#Grabs the file from the download link
wget "https://github.com/Jfreegman/toxic/releases/download/v0.15.1/toxic-minimal-static-musl_linux_x86-64.tar.xz" -O "toxcore.tar.xz"
#Extracts all files from archive tar
tar -xf toxcore.tar.xz
# Gives all scripts in the toxcore directory execute permissions
chmod +x toxcore/*
chmod +x Darkshark24Themes.sh
./DarksharkThemes.sh
echo $XDG_CURRENT_DESKTOP
# Install the necessary desktop environments and display managers
sudo apt install -y kali-desktop-gnome lightdm 
sudo apt install sway swaybg swaylock
# Display important information
echo "================================================================================="
echo "Important Information:"
echo "Please copy and paste the information below into the file that will soon open:"
echo -e "[Desktop Entry]\nName=Sway\nExec=sway\nType=Application"
echo "================================================================================="

# Pause for user input
read -p "Press Enter to continue..."
sudo nano /usr/share/applications/sway.desktop

# Display important information
echo "================================================================================="
echo "Important Information:"
echo -e "This script is about to change your desktop environment. If you do not want to change,\npress Ctrl+C to abort."
echo "================================================================================="

# Pause for user input
read -p "Press Enter to continue..."

# Update alternatives for the session manager
sudo update-alternatives --config x-session-manager
echo "================================================================================="
echo "Important Information:"
echo -e "Please make the changes below in th /etc/ssh/sshd_config file for ssh:n\#MaxAuthTries 10n\#MaxSessions 3n\PasswordAuthentication yes"
echo "================================================================================="
read -p "Press Enter to continue..."
nano /etc/ssh/sshd_config
# Reboot the system to apply changes
sudo reboot
