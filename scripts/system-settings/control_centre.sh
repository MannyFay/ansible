#!/bin/zsh

#------------------------------------------------------------------------------
#----- Always show these items in menu bar

#-- AirDrop:
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist AirDrop -int 18

#-- Bluetooth:
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist Bluetooth -int 18

#-- Date:
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist ShowDate -int 18

#-- Display:
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist Display -int 18

#-- Focus Modes:
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist FocusModes -int 18

#-- Keyboard Brightness:
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist KeyboardBrightness -int 18

#-- Music Recognition:
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist MusicRecognition -int 18

#-- Screen Mirroring:
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist ScreenMirroring -int 18
 
#-- Sound:
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist Sound -int 18

#-- Time Machine:
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist TimeMachine -int 18

#-- Wi-Fi:
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist Wifi -int 18



#------------------------------------------------------------------------------
#----- Don't show these items in menu bar

#-- Accessibility Shortcuts:
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist AccessibilityShortcuts -int 8

#-- Battery:
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist Battery -int 8

#-- Fast User Switching:
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist FastUserSwitching -int 8

#-- Hearing:
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist Hearing -int 8

#-- Now Playing:
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist NowPlaying -int 8

#-- Siri:
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist Siri -int 8

#-- Spotlight:
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist Spotlight -int 8

#-- Stage Manager:
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist StageManager -int 8
