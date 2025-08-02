#!/bin/bash

# --------------------------------------------
# HomeLab 1.0 - Pre-Reboot Setup
# OS Updates, Dev Tools, NVIDIA Drivers
# --------------------------------------------

echo "🔧 Starting HomeLab 1.0 system prep..."

# Update system and upgrade all packages
sudo apt update && sudo apt upgrade -y

# Install developer tools and system utilities
sudo apt install -y \
  build-essential \        # Compiler tools (GCC, make, etc.)
  curl \                   # Command-line downloader
  wget \                   # Another downloader, often used in scripts
  git \                    # Version control (cloning GitHub repos)
  unzip \                  # Unzipping .zip files
  htop \                   # Interactive system monitor
  tmux \                   # Terminal multiplexer — keep sessions open after disconnect
  net-tools                # Legacy networking tools like ifconfig/netstat

# Install NVIDIA GPU driver (version 535)
# May trigger Secure Boot MOK enrollment
sudo apt install -y nvidia-driver-535

echo "🔁 Driver installed. Please reboot now and run 'setup-homelab-post.sh' after reboot."
