#!/bin/zsh

#-- Disable keyboard from automatically adjusting backlight brightness in low light:
sudo defaults write /Library/Preferences/com.apple.iokit.AmbientLightSensor "Automatic Keyboard Enabled" -bool false