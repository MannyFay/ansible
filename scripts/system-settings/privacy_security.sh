#!/bin/zsh

defaults write /Library/Application\ Support/com.apple.TCC/TCC.db com.apple.TCC.configuration.plist Allowed -bool false
defaults write /Library/Application\ Support/com.apple.TCC/TCC.db com.apple.TCC.developer.plist Allowed -bool false

# Check if FileVault is enabled:
if sudo fdesetup status | grep -q "FileVault is On"; then
    :
else
    sudo fdesetup enable
fi
