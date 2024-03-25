# Linux cheat sheet

## General

```
# Commandline options kernel was started with
cat /proc/cmdline
```

```
# Distribution version details
lsb_release -a
```

```
# Kernel details
uname -a
```

```
# Machine serial number
sudo dmidecode -s system-serial-number
```

```
# System log
journalctl --system -S "2024-03-22 14:00"

# add -no-tail when piping to something
```

```
# Get display details
edid-decode /sys/class/drm/card0-eDP-1/edid
```

```
# Memory (RAM) details
sudo lshw -C memory
```

```
# NVMe SSD details
sudo smartctl -a /dev/nvme0
```

```
# Block device e.g. disk details
lsblk
```

```
# CPU details
lscpu
```

```
# USB bus details
lsusb
```

```
# Firehose of hardware info
sudo hwinfo
```

```
# Service status
sudo systemctl status <service name>

# USe enable, start and stop to control services
```

```
# Sleep mode details
cat /sys/power/mem_sleep
```

```
# What the kernel should do after creating a hibernation image
cat /sys/power/disk
```


```
# Mask sleep states
sudo systemctl mask hibernate.target hybrid-sleep.target
```

```
# Examine masked states
sudo systemctl status sleep.target suspend.target hibernate.target hybrid-sleep.target
```


```
# Printers

lpstat -p -d
lpinfo -v
lp
```

```
# Current window manager
echo $XDG_CURRENT_DESKTOP
```

## GRUB

```
# Edit GRUB configuration
sudo vi /etc/default/grub
```

```
# Write out GRUB configuration (Ubuntu)
sudo update-grub  
```

```
# If update-grub is not available
sudo grub2-mkconfig -o /boot/grub/grub.cfg 
```


## GNOME

```
gnome-shell --version
```

```
# Focus follows mouse
gsettings set org.gnome.desktop.wm.preferences focus-mode 'sloppy'
```

```
# Set which buttons are visible on a window menu bar
gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"
```

### Extensions
- Forge
- Stocks Extension

#### Needed on openSUsE
- Dash to Dock
- AppIndicator and KStatusNotifierItem Support

## Vi(m)

[.vimrc](.vimrc)  
[Config files](.vim)

```
# Check if compiled with clipboard support
vim --version | grep clipboard

# or
:echo has('clipboard'))
```
```
# Paste from clipboards (When compiled with +clipboard option
"+p
"*p
```

```
# Open file in new tab
:tabedit <file>
```

```
# Gotot tab 
[tab number]gt

# e.g. 2gt will go to second tab  
```

# Package management

```
# Show details (including size) of a package
apt show X
```


## Software I use

```

sudo apt install git flatpak pandoc simple-scan
```

## Flatpaks

```
flatpak install flathub io.github.dosbox-staging

```


