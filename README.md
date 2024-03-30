# Linux cheat sheet

[Bash multiple history files](bash-history.md)


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
### Builtin file explorer: `netrw`

- https://www.vim.org/scripts/script.php?script_id=1075
- https://neovim.io/doc/user/pi_netrw.html

```
# Start with
:Explore
:Sexplore
:Vexplore
```


### Plugins
1. [git gutter](https://github.com/airblade/vim-gitgutter)
2. [A.L.E](https://github.com/dense-analysis/ale)
3. ~~[NERDTree](https://github.com/preservim/nerdtree)~~ 
Actually, the "builtin" explorer `netrw` is good enough for me.



## Package management

```
# Show details (including size) of a package
apt show X
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



## For writing

```
# Install needed packages
sudo apt install vim-gtk pandoc tex-live mupdf 
```
**mupdf can read epub**. Use "H" to fit the page to the window height. ">" to increase font size.


```
# Force mupdf to reload the file
pkill -HUP mupdf
```
