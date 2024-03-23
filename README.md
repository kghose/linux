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
# Service status
sudo systemctl status <service name>
```

```
# Sleep mode details
cat /sys/power/mem_sleep
```

```
# Printers

lpstat -p -d
lpinfo -v
lp
```


## GNOME

```
# Focus follows mouse
gsettings set org.gnome.desktop.wm.preferences focus-mode 'sloppy'
```

```
# Set which buttons are visible on a window menu bar
gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"
```

### Extensions

- Dash to Dock
- Forge
- AppIndicator and KStatusNotifierItem Support
- Stocks Extension

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
