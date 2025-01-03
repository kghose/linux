# Linux cheat sheet

## Topic sheets

1. [Gnome](gnome.md)
1. [Utilities](utils.md)
1. [Bash multiple history files](bash-history.md)
1. [Vi(m)](vim.md)
1. [Multiple Dosbox configurations](dosbox-conf.md)
1. [Writing](writing.md)


## Command reference

| Command | Keywords/Description |
| ------- | ---------------------|
| `cat /proc/cmdline` | Commandline options kernel was started with |
| `lsb_release -a` | Distribution version details |
| `uname -a` | Kernel details |
| `sudo dmidecode -s system-serial-number` | Machine serial number |


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
# Disk space stats in human readable format
du -H
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

## Local hostname resolution

(Allows machine to resolve devices on the LAN using `<hostname>.local` scheme.)  
https://wiki.archlinux.org/title/avahi

[mDNS](https://en.wikipedia.org/wiki/Multicast_DNS) is what enables this and the implementation for
Linux is [Avahi](https://avahi.org/). Ubuntu installs this automatically, but other distros, like
openSUsE don't. The arch wiki page (linked above) is a great resource for setting it up yourself.

## SSH

### Reuse ssh connection (e.g. for rsync)

https://man.openbsd.org/ssh_config.5#ControlMaster

e.g.

```
# in ~/.ssh/config
ControlMaster auto
ControlPath ~/.ssh/control:%C
ControlPersist 5m
```

## Package management

```
# Show details (including size) of a package
apt show X
```

## Networking

```
# Networking interface configuration
ifconfig
```


```
# Trace route to host
mtr 8.8.8.8
```




# Software I use

## General
```
sudo apt install git flatpak simple-scan
```

## Flatpaks

```
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak install flathub org.mozilla.firefox
flatpak install flathub io.github.dosbox-staging
flatpak install flathub net.sf.VICE
```

### Flatpack commandlines

```
flatpak run --filesystem=/home/kghose/RetroComputing/dosbox io.github.dosbox-staging

flatpak run --filesystem=/home/kghose/RetroComputing/c64/ net.sf.VICE

flatpak run org.mozilla.firefox
```

### Examine permissions

```
flatpak info --show-permissions org.mozilla.firefox
```

