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

echo "8888888 .d8888b.   .d8888b.  8888888888       .d8888b.  888                  888                   888                       
             888  d88P  Y88b d88P  Y88b 888             d88P  Y88b 888                  888                   888                       
             888  888    888 Y88b.      888             Y88b.      888                  888                   888                       
             888  888         "Y888b.   8888888          "Y888b.   888888 888  888  .d88888  .d88b.  88888b.  888888 .d8888b            
             888  888            "Y88b. 888                 "Y88b. 888    888  888 d88" 888 d8P  Y8b 888 "88b 888    88K                
             888  888    888       "888 888                   "888 888    888  888 888  888 88888888 888  888 888    "Y8888b.           
             888  Y88b  d88P Y88b  d88P 888             Y88b  d88P Y88b.  Y88b 888 Y88b 888 Y8b.     888  888 Y88b.       X88           
           8888888 "Y8888P"   "Y8888P"  888              "Y8888P"   "Y888  "Y88888  "Y88888  "Y8888  888  888  "Y888  88888P'           
                                                                                                                                        
                                                                                                                                        
                                                                                                                                        
           88888888888                                                     .d8888b.           888                                       
               888                                                        d88P  Y88b          888                                       
               888                                                        Y88b.               888                                       
               888   .d88b.  888d888 88888b.d88b.  888  888 888  888       "Y888b.    .d88b.  888888 888  888 88888b.                   
               888  d8P  Y8b 888P"   888 "888 "88b 888  888 `Y8bd8P'          "Y88b. d8P  Y8b 888    888  888 888 "88b                  
               888  88888888 888     888  888  888 888  888   X88K              "888 88888888 888    888  888 888  888                  
               888  Y8b.     888     888  888  888 Y88b 888 .d8""8b.      Y88b  d88P Y8b.     Y88b.  Y88b 888 888 d88P                  
               888   "Y8888  888     888  888  888  "Y88888 888  888       "Y8888P"   "Y8888   "Y888  "Y88888 88888P"                   
                                                                                                              888                       
                                                                                                              888                       
                                                                                                              888                       
                                                        8888888b.                                                                       
                                                        888  "Y88b                                                                      
                                                        888    888                                                                      
                                                        888    888  .d88b.  88888b.   .d88b.                                            
                                                        888    888 d88""88b 888 "88b d8P  Y8b                                           
                                                        888    888 888  888 888  888 88888888                                           
                                                        888  .d88P Y88..88P 888  888 Y8b.                                               
                                                        8888888P"   "Y88P"  888  888  "Y8888"
