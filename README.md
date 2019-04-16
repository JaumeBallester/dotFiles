# LinuxConfigs
Contains the configurations of Jaume's Linux.

## i3wm
i3 is a Free and Open Source Software, tiling window manager. i3 is primarily targeted at advanced users and developers.

![alt text](https://i.imgur.com/YZ6KtEf.png)

### Install i3

To install i3, use the following comand on Ubuntu/debian distributions:
```
sudo apt-get install i3
```
Once installed, you have to logout, and when you login, select the i3 desktop enviroment.

### Add this Configuration

After entering the desktop environment for the first time, you will receive a notification if you want to create a configuration. Accept and select the $Mod key you want. 
Then, clone this repository in **$HOME/.config** and press **$Mod+shift+r**.

### Prerequisites

```
sudo apt-get install wmctrl
```

#### Multiple Monitors
To configure multiple monitors, i recomend using arandr, to install:

```
sudo apt-get install arandr
```
Once installed open it with the dmenu, and configure the monitors as you want. After making your changes, Apply them to visualize the effect that they are going to have on your system. If you are happy with them, replace the file $HOME/.config/i3/monitors.sh.


#### Programs I use
This is my own configuration, so when I boot, I want my programs to appear. The programs that i have configured are:
```
# Visual Studio Code
snap install code 

# GitKraken
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
dpkg -i gitkraken-amd64.deb

# Firefox
sudo apt install firefox
```

