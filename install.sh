#!/bin/bash

# Define colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color
BOLD='\033[1m'

echo -e "${CYAN}${BOLD}Starting idalgit installation...${NC}"

# Define the target directory and file
BIN_DIR="/usr/local/bin"
EXECUTABLE="idal"
TARGET_PATH="$BIN_DIR/$EXECUTABLE"
TEMP_FILE="/tmp/idal_download"

# Check for root/sudo access if writing to /usr/local/bin
if [ ! -w "$BIN_DIR" ]; then
    echo -e "${YELLOW}Wait, we need administrator privileges to install to $BIN_DIR.${NC}"
    echo -e "Please run this script with \e[1;31msudo\e[0m or enter your password when prompted."
    SUDO="sudo"
else
    SUDO=""
fi

# Download the script from the repository
echo -e "Downloading latest version..."
curl -sL "https://raw.githubusercontent.com/haidirwf/idal-git/main/idal" -o "$TEMP_FILE"

if [ $? -ne 0 ]; then
    echo -e "${RED}Failed to download idal. Please check your internet connection.${NC}"
    exit 1
fi

# Move it to the bin directory
$SUDO mv "$TEMP_FILE" "$TARGET_PATH"

if [ $? -ne 0 ]; then
    echo -e "${RED}Failed to move the executable to $BIN_DIR. Installation aborted.${NC}"
    exit 1
fi

# Make it executable
$SUDO chmod +x "$TARGET_PATH"

echo -e "\n${GREEN}${BOLD}✔ Install complete!${NC}"
echo -e "You can now use ${CYAN}idal${NC} anywhere in your terminal."
echo -e "Try running: ${CYAN}idal help${NC}\n"
