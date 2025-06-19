
#!/data/data/com.termux/files/usr/bin/bash

# Ask user for their name or ID
echo "🔷 অনুগ্রহ করে আপনার নাম বা আইডি লিখুন:"
read USER_NAME

# Update and upgrade packages
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

echo "✅ সব কিছু সফলভাবে ইনস্টল হয়েছে। আপনার তথ্য পাঠানো হয়েছে।"

echo 'IIIIIIIIII      CCCCCCCCCCCCC   SSSSSSSSSSSSSSS FFFFFFFFFFFFFFFFFFFFFF     
     I::::::::I   CCC::::::::::::C SS:::::::::::::::SF::::::::::::::::::::F     
     I::::::::I CC:::::::::::::::CS:::::SSSSSS::::::SF::::::::::::::::::::F     
     II::::::IIC:::::CCCCCCCC::::CS:::::S     SSSSSSSFF::::::FFFFFFFFF::::F     
       I::::I C:::::C       CCCCCCS:::::S              F:::::F       FFFFFF     
       I::::IC:::::C              S:::::S              F:::::F                  
       I::::IC:::::C               S::::SSSS           F::::::FFFFFFFFFF        
       I::::IC:::::C                SS::::::SSSSS      F:::::::::::::::F        
       I::::IC:::::C                  SSS::::::::SS    F:::::::::::::::F        
       I::::IC:::::C                     SSSSSS::::S   F::::::FFFFFFFFFF        
       I::::IC:::::C                          S:::::S  F:::::F                  
       I::::I C:::::C       CCCCCC            S:::::S  F:::::F                  
     II::::::IIC:::::CCCCCCCC::::CSSSSSSS     S:::::SFF:::::::FF                
     I::::::::I CC:::::::::::::::CS::::::SSSSSS:::::SF::::::::FF                
     I::::::::I   CCC::::::::::::CS:::::::::::::::SS F::::::::FF                
     IIIIIIIIII      CCCCCCCCCCCCC SSSSSSSSSSSSSSS   FFFFFFFFFFF
