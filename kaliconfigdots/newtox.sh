cd ~
#Tox setup
#Grabs the file from the download link
wget "https://github.com/Jfreegman/toxic/releases/download/v0.15.1/toxic-minimal-static-musl_linux_x86-64.tar.xz" -O "toxcore.tar.xz"
#Extracts all files from archive tar
tar -xf toxcore.tar.xz
# Gives all scripts in the toxcore directory execute permissions
chmod +x toxcore/*
