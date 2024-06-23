#!/bin/zsh

#--------------------------------------------------------------------------
#----- Dock

#-- Set Dock size:
#defaults write com.apple.dock tilesize -int 30
#-- Turn of magnification:
#defaults write com.apple.dock magnification -bool false
#-- Automatically hide the dock:
#defaults write com.apple.dock autohide -bool true
#-- Don't animate icons of launching apps:
#defaults write com.apple.dock launchanim -bool false
#-- Turn off stage mangager:
#defaults write com.apple.dock show-process-indicators -bool false
#-- Don't show recent apps in Stage Manager:
defaults write com.apple.dock show-recents -bool false


#-- Restart Dock:
killall Dock