### i3

## Instalation:

# Update package list
sudo apt update

# Install i3 and essential components
sudo apt install i3 i3status i3lock dmenu

# Install recommended extras (optional but helpful)
sudo apt install feh compton fonts-font-awesome

# Install audio and notification utilities
sudo apt install pulseaudio-utils libnotify-bin

## Configuration:

- Created i3 config file
- Modifed the config file enabling volume controlseswad
- Added a status bar config file and udpate teh i3 config to point to it
- updated config to enable mousepad touch clicking
- installed flameshot for screenshots, updated config (fn + shift/prt sc)
- installed gammastep for nightlight, updated config (mod + shift + n/m)
- updated ilock config adding colour for dark mode lock screen
- enabled duel monitors: Added xrandr (display manager) commands to i3 config (mod + [/])
- enabled bluetooth: installed blueman and updated config to  enable bluetooth and added gui toggle to status bar
- installed cheese to use camera. Type 'cheese' on command line
- Enabled brightness controls: installed brightnessctl, updated config enabling brightness keys and added current user to the video group
- Created audio output switcher: created ~/.config/i3/scripts/audio-switch.sh script for switching between audio devices (speakers/bluetooth), made executable, added keybinding (mod + shift + a)

### Poly Bar

- sudo apt install polybar
- create config file at ~/.config/polybar/config.ini
- created a launch script at ~/.config/polybar/launch.sh
- made this script executable
- updated i3 config to launch the status bar, removed default status bar

