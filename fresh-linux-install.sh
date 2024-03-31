#!/usr/bin/bash
echo -n "Press any key to populate your fresh linux installation: "; read;
sudo apt update && sudo apt upgrade -y


######################### UTILS #########################

### git
echo "\n"
echo ">>>>>>>>>> Setting up git"
echo "           =============="
sudo apt install -y git

echo -n "Enter your GitHub username: "; read gitHubUserName;
echo -n "Enter your GitHub email: "; read gitHubEmail;
git config --global user.name $gitHubUserName
git config --global user.email $gitHubEmail
git config --global init.defaultBranch main
git config --global core.editor vim

echo "Setting up git DONE\!<<<<<<<<<<"
echo "                 =============="
echo "\n"

echo ">>>>>>>>>> Setting up an SSH key"
echo "           ====================="
ssh-keygen -f "$HOME/.ssh/id_rsa" -N '' -y
echo "Setting up an SSH key DONE\!<<<<<<<<<<"
echo "                 ====================="
echo "\n"

### other utils
echo ">>>>>>>>>> Setting up other utils"
echo "           ======================"
sudo apt install -y vim \
		 curl \
		 timeshift
echo "Setting up other utils DONE\!<<<<<<<<<<"
echo "                 ======================"
echo "\n"

######################### DEVELOPMENT TOOLS #########################

echo ">>>>>>>>>> Setting up core dev packages"
echo "           ============================"
sudo apt install -y build-essential
sudo apt cmake
echo "Setting up core dev packages DONE\!<<<<<<<<<<"
echo "                 ============================"
echo "\n"

### dependencies for building python from source later
echo ">>>>>>>>>> Setting up python dependencies"
echo "           =============================="
sudo apt install -y \
		 pkg-config \
		 python3-tk \
		 libsqlite3-dev \
		 libncurses5-dev \
		 libgdbm-dev \
		 libbz2-dev \
		 libdb-dev \
		 uuid-dev \
		 libffi-dev \
		 liblzma-dev \
		 libreadline-dev \
		 libssl-dev \
		 tk-dev \
		 zlib1g-dev
echo "Setting up python dependencies DONE\!<<<<<<<<<<"
echo "                  =============================="
echo "\n"

######################### BROWSERS #########################

echo ">>>>>>>>>> Setting up Browsers"
echo "           ==================="
### Brave Browser
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update && sudo apt install brave-browser

# Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb
echo "Setting up Browsers DONE\!<<<<<<<<<<"
echo "                  =================="
echo "\n"


######################### MESSAGING #########################

echo ">>>>>>>>>> Setting up Messaging apps"
echo "           ========================="
### Signal Desktop

# NOTE: These instructions only work for 64-bit Debian-based
# Linux distributions such as Ubuntu, Mint etc.

# 1. Install our official public software signing key:
wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg
cat signal-desktop-keyring.gpg | sudo tee /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null

# 2. Add our repository to your list of repositories:
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' |\
  sudo tee /etc/apt/sources.list.d/signal-xenial.list

# 3. Update your package database and install Signal:
sudo apt update && sudo apt install -y signal-desktop
echo "Setting up Messaging apps DONE\!<<<<<<<<<<"
echo "                 ========================="


######################### MULTIMEDIA #########################

### standard
echo ">>>>>>>>>> Setting up multimedia"
echo "           ====================="
sudo apt install -y vlc \
		 ffmpeg \
		 obs-studio
echo "Setting up multimedia DONE\!<<<<<<<<<<"
echo "             ========================="

######################### TERMINAL UTILS #########################

### zsh
echo ">>>>>>>>>> Setting up zsh and Oh-my-zsh"
echo "           ============================"
sudo apt install -y zsh

### oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
echo "Setting up zsh and Oh-my-zsh DONE\!<<<<<<<<<<"
echo "                 ============================"


######################### FOLDERS #########################

echo ">>>>>>>>>> Setting up folders"
echo "           =================="
cd ~
mkdir my-repos my-scripts other-repos programs
echo "Setting up folders DONE\!<<<<<<<<<<"
echo "       ============================"


######################### APP IMAGES TO GET AFTERWARDS #########################

echo 'install these too:
- Obsidian : https://obsidian.md/
- KeepassXC: https://keepassxc.org/download/#linux
- qBittorrent (for linux isos): https://www.qbittorrent.org/download
'

echo 'build these from source:
- python3 - https://www.python.org/downloads/
'
