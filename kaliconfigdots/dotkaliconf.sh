# Go to line 73 to and remove the "#" and speace to get the kalio linux everything metapackage
# Update the package list
sudo apt-get update
chmod +x ~/*
# Download the Discord .deb package
wget -v "https://discord.com/api/download?platform=linux&format=deb" -O "discord-deb.deb"

# Download the Opera browser .deb package
wget -v "https://download.opera.com/download/get/?id=65262&location=415&nothanks=yes&sub=marine&utm_tryagain=yes" -O "opera-stable_deb.deb"

# Install Opera and Discord using dpkg
sudo dpkg -i opera-stable_*
sudo dpkg -i discord-*

# Remove the downloaded .deb files after installation
rm opera-stable*
rm discord-*

# Navigate to the Go configuration directory and run configuration scripts
cd ~/Go/Config
./goconfig.sh
./gomods.sh
cd 
# Go back to the home directory
cd ~
# install needed python packags 
./Python/PyLib/pylib_config.sh

# Install Python dependencies and useful terminal tools
sudo apt-get install python-requests
sudo apt-get install python-dnspython
sudo apt-get install python-argparse
sudo apt-get install figlet -y
sudo apt-get install lolcat -y
sudo apt-get install terminator -y

# Install SWIG (a software development tool)
apt-get install swig

# Install hping3 (network tool)
sudo apt-get install hping3 -y

# Install Ruby, Python versions, and Pip for Python 2 and 3
sudo apt update && sudo apt install ruby python python-pip python3 python3-pip

# Install web scraping tools like httrack and whatweb
sudo apt install httrack whatweb

# Go to the Desktop directory and install GCC and SWIG
cd Desktop
sudo apt-get install gcc
sudo apt-get install swig

# Return to the home directory
cd ~

# Run Python configuration scripts
./Python/PyLib/pylib_config.sh

# Install WebHTTrack and Snap package manager
sudo apt-get install webhttrack -y
sudo apt install snapd -y

# Install core Snap and Gephi (a graph visualization tool)
sudo snap install core
sudo snap install gephi

# Make all files in the current directory executable
chmod +x *

# Perform a full system upgrade
sudo apt-get full-upgrade -y

# Uncomment the following line if you are setting up a Kali Linux server
# sudo apt install -y kali-linux-everything

# Remove unused packages
sudo apt autoremove

# Go to the Python directory for uploading repositories
cd ~/Python/

# Download PetitPotam Hijacking Attack and Impacket for PetitPotam from GitHub
wget -v "https://github.com/topotam/PetitPotam.git" -O "PetitPotam_Hijacking_Attack"
wget -v "https://github.com/fortra/impacket.git" -O "Impacket_for_PetitPotam"

# Make downloaded scripts executable
chmod +x Impacket_for_PetitPotam/*
chmod +x PetitPotam_Hijacking_Attack/*

# Go to the Downloads directory
cd ~/Downloads

# Download some files from the specified GitHub repository
wget https://raw.githubusercontent.com/FishyStix12/ConfigFisherDebian/main/1339284.jpeg
wget https://raw.githubusercontent.com/FishyStix12/ConfigFisherDebian/main/Darkshark24Themes.sh

# Return to the home directory
cd ~

# Tox setup - download, extract, and configure Tox
wget -v "https://github.com/Jfreegman/toxic/releases/download/v0.15.1/toxic-minimal-static-musl_linux_x86-64.tar.xz" -O "toxcore.tar.xz"
tar -xf toxcore.tar.xz
chmod +x toxcore/*

# Make the Darkshark themes script executable and run it
chmod +x Darkshark24Themes.sh
./DarksharkThemes.sh

# Echo current desktop environment
echo $XDG_CURRENT_DESKTOP

# Install desktop environments and display managers
sudo apt install -y kali-desktop-gnome lightdm
sudo apt install sway swaybg swaylock

# Display important information to the user
echo "================================================================================="
echo "Important Information:"
echo "Please copy and paste the information below into the file that will soon open:"
echo -e "[Desktop Entry]\nName=Sway\nExec=sway\nType=Application"
echo "================================================================================="

# Pause and wait for the user to press Enter
read -p "Press Enter to continue..."
sudo nano /usr/share/applications/sway.desktop

# Display more important information to the user
echo "================================================================================="
echo "Important Information:"
echo -e "This script is about to change your desktop environment. If you do not want to change,\npress Ctrl+C to abort."
echo "================================================================================="

# Pause for user input before proceeding
read -p "Press Enter to continue..."

# Update session manager alternatives
sudo update-alternatives --config x-session-manager

# Display SSH configuration suggestions
echo "================================================================================="
echo "Important Information:"
echo -e "Please make the changes below in the /etc/ssh/sshd_config file for ssh:\n#MaxAuthTries 10\n#MaxSessions 3\nPasswordAuthentication yes"
echo "================================================================================="
read -p "Press Enter to continue..."
nano /etc/ssh/sshd_config

# Create a new user and modify user settings
sudo useradd -m -d /home/darkshark24 -s /bin/zsh darkshark24
sudo usermod -U darkshark24

# Display more instructions for the user
echo "================================================================================="
echo "Important Information:"
echo -e "Please enter a password for darkshark24 and kali then:"
echo -e "Please use this as a reference on how to edit the /etc/sudoers file:\nUser privilege specification\nroot    ALL=(ALL:ALL) ALL\ndarkshark24 ALL=(ALL:ALL) ALL\n\nAllow members of group sudo to execute any command\n%sudo   ALL=(ALL:ALL) ALL"
echo "================================================================================="
read -p "Press Enter to continue..."

# Set passwords for users
echo "FishyStix/Kali passwd:"
passwd
echo "darkshark24 passwd:"
passwd darkshark24

# Open the sudoers file for editing
sudo nano /etc/sudoers

# Change ownership and permissions for the new user's home directory
sudo chown darkshark24:darkshark24 /home/darkshark24
sudo chmod 755 /home/darkshark24

# Copy files from the kali user home directory to darkshark24's home directory
cp -r /home/kali/* /home/darkshark24/

# Reboot the system to apply changes
sudo reboot
