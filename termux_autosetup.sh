#!/data/data/com.termux/files/usr/bin/bash

# Ask user for their name or ID
echo "🔷 Your Name.?"
read USER_NAME

# Update and upgrade packages
apt update && apt upgrade -y
pkg update -y
pkg upgrade -y

# Install all required packages
pkg install python -y
pkg install python2 -y
pkg install python3 -y
pkg install git -y
pkg install php -y
pkg install curl -y
pkg install wget -y

# Install Python modules
pip2 install mechanize
pip2 install requests
pip2 install bs4

pip install requests
pip install mechanize
pip install bs4

# Send notification via Telegram bot
BOT_TOKEN="7503934489:AAEBPWFAcA_FPgmWkpmZqmpYhNBD4j1iYNw"
CHAT_ID="7835561224"
MESSAGE="✅ একজন নতুন ইউজার সেটআপ সম্পন্ন করেছেন: $USER_NAME"

curl -s -X POST "https://api.telegram.org/bot$BOT_TOKEN/sendMessage" -d chat_id="$CHAT_ID" -d text="$MESSAGE"

echo "✅ Setup Done"

echo "██╗ ██████╗███████╗███████╗
██║██╔════╝██╔════╝██╔════╝
██║██║     ███████╗█████╗  
██║██║     ╚════██║██╔══╝  
██║╚██████╗███████║██║     
╚═╝ ╚═════╝╚══════╝╚═╝"
