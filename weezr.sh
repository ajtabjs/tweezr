#!/bin/bash
command_exists() {
  command -v "$1" >/dev/null 2>&1
}


# Check if mpg123 is already installed
if command_exists mpg123; then
  echo "mpg123 is already installed."
else
  # Install mpg123 based on the package manager of the system
  if command_exists apt; then
    sudo apt update
    sudo apt install -y mpg123
  elif command_exists yum; then
    sudo yum install -y mpg123
  elif command_exists brew; then
    brew install mpg123
  else
    echo "Unable to determine the package manager. Please install mpg123 manually."
    exit 1
  fi
fi       


echo "
██████╗ ██╗   ██╗██████╗ ██████╗ ██╗   ██╗
██╔══██╗██║   ██║██╔══██╗██╔══██╗╚██╗ ██╔╝
██████╔╝██║   ██║██║  ██║██║  ██║ ╚████╔╝ 
██╔══██╗██║   ██║██║  ██║██║  ██║  ╚██╔╝  
██████╔╝╚██████╔╝██████╔╝██████╔╝   ██║   
╚═════╝  ╚═════╝ ╚═════╝ ╚═════╝    ╚═╝   
                                          
██╗  ██╗ ██████╗ ██╗     ██╗  ██╗   ██╗
██║  ██║██╔═══██╗██║     ██║  ╚██╗ ██╔╝
███████║██║   ██║██║     ██║   ╚████╔╝ 
██╔══██║██║   ██║██║     ██║    ╚██╔╝  
██║  ██║╚██████╔╝███████╗███████╗██║   
╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚══════╝╚═╝  "

echo "-------------------------"
echo "You just got Weezered!!"
echo ""
echo "Made by AJTalksAboutStuff"
echo "-------------------------"

wget -nc "https://ajtabjs.github.io/tweezr/buddyholly.mp3"

mpg123 buddyholly.mp3
