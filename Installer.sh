#!/data/data/com.termux/files/usr/bin/bash

pika="${PREFIX}/etc/proot-distro"
chu=$1

# Ensure a distro name is passed as an argument
if [ -z "$chu" ]; then
    echo "Error: No distribution specified."
    echo "Usage: $0 <distribution>"
    exit 1
fi

# Update and install required packages
apt update && apt upgrade -y
apt install -y wget curl proot-distro

# Download the distribution-specific script
wget -q https://raw.githubusercontent.com/NobDev69/Install-ubuntu-termux/refs/heads/main/${chu}.sh -O ${pika}/${chu}.sh

# Install and launch the specified distribution
proot-distro install ${chu}
proot-distro login ${chu}
