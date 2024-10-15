#!/data/data/com.termux/files/usr/bin/bash
pika="${PREFIX}/etc/proot-distro"
chu=$1
apt update
yes | apt upgrade
apt install wget curl proot-distro
wget -q https://raw.githubusercontent.com/NobDev69/Install-ubuntu-termux/refs/heads/main/${chu}.sh -O ${pika}/${chu}.sh
pd i ${chu}
pd sh ${chu}
