# ====== Banner Python script create =======
cat > $HOME/banner.py << 'EOF'
import os

os.system("clear")

banner = """
██╗ ██████╗███████╗███████╗
██║██╔════╝██╔════╝██╔════╝
██║██║     ███████╗█████╗  
██║██║     ╚════██║██╔══╝  
██║╚██████╗███████║██║     
╚═╝ ╚═════╝╚══════╝╚═╝

➤ Developer : SOMSER
➤ Team FB   : https://www.facebook.com/islamic.cyber7ecurityforce
"""

try:
    from subprocess import run
    run("echo '{}' | lolcat".format(banner), shell=True)
except Exception:
    print(banner)
    print("\n(⚠️ Install lolcat for colorful output: pkg install ruby -y && gem install lolcat)")
EOF

# ====== Install lolcat if not installed ======
if ! command -v lolcat &> /dev/null
then
    echo "💡 Installing lolcat for colorful banner..."
    pkg install ruby -y
    gem install lolcat
fi

# ====== Add banner call to .bashrc if not present ======
if ! grep -q "python \$HOME/banner.py" ~/.bashrc; then
    echo "python \$HOME/banner.py" >> ~/.bashrc
    echo "✅ Banner command added to ~/.bashrc"
else
    echo "⚠️ Banner command already present in ~/.bashrc"
fi
