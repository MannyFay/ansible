#!/bin/zsh

#-- Disable display from automatically adjusting brightness:
sudo defaults write /Library/Preferences/com.apple.iokit.AmbientLightSensor "Automatic Display Enabled" -bool false