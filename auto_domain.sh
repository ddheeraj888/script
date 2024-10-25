#!/bin/bash

# Update package lists
apt-get update

# Install necessary packages
apt-get install -y software-properties-common build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev git dos2unix

# Display options to the user
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$green 𝓟𝓡𝓔𝓢𝓢 1 𝓣𝓞 𝓤𝓢𝓔 𝓓𝓗𝓔𝓔𝓡𝓐𝓙 𝓓𝓞𝓜𝓐𝓘𝓝                           	$NC"
echo -e "$green 𝓟𝓡𝓔𝓢𝓢 2 𝓣𝓞 𝓘𝓝𝓟𝓤𝓣 𝓒𝓤𝓢𝓣𝓞𝓜 𝓓𝓞𝓜𝓐𝓘𝓝              	$NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"

# Read user's choice
read -rp "Input 1 or 2: " dns

if [ "$dns" -eq 1 ]; then
    # Download cf script and convert line endings
    wget https://raw.githubusercontent.com/NETWORKTWEAKER/AUTO-SCRIPT/master/ssh/cf
    dos2unix cf
    bash cf
elif [ "$dns" -eq 2 ]; then
    # Prompt for custom domain and save it to various files
    read -rp "Enter Your Domain: " dom
    echo "$dom" > /root/scdomain
    echo "$dom" > /etc/xray/scdomain
    echo "$dom" > /etc/xray/domain
    echo "$dom" > /etc/v2ray/domain
    echo "$dom" > /root/domain
else
    # Handle invalid input
    echo "Not Found Argument"
    exit 1
fi
