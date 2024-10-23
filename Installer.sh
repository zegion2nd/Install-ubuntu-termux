#!/data/data/com.termux/files/usr/bin/bash

pika="${PREFIX}/etc/proot-distro"
rai="${PREFIX}/var/lib/proot-distro/installed-rootfs"
chu=$1

# Ensure a distro name is passed as an argument
if [ -z "$chu" ]; then
    echo "Error: No distribution specified."
    echo "Usage: $0 <distribution>"
    exit 1
fi

# Update and install required packages
apt update
yes | apt upgrade
apt update
apt install -y wget curl proot-distro

# Download the distribution-specific script
wget -q https://raw.githubusercontent.com/NobDev69/Install-ubuntu-termux/refs/heads/main/${chu}.sh -O ${pika}/${chu}.sh

# Install and launch the specified distribution
pd i ${chu}
wget -q https://raw.githubusercontent.com/NobDev69/Install-ubuntu-termux/refs/heads/main/quick-setup -O ${rai}/${chu}/root/
pd sh ${chu}
