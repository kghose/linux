# GNOME

```
gnome-shell --version
```

## Square windows (Ubuntu 23)

In `.config/gtk-3.0/gtk.css`

```
decoration, window, window.background, window.titlebar, *.titlebar {
  border-radius: 0px;
}
```


## Focus follows mouse
```
gsettings set org.gnome.desktop.wm.preferences focus-mode 'sloppy'
```


## Window buttons

Set which buttons are visible on a window menu bar

```
gsettings set org.gnome.desktop.wm.preferences button-layout 
":minimize,maximize,close"
```

## Extensions
- Forge
- Stocks Extension

### Needed separately on openSUsE
- Dash to Dock
- AppIndicator and KStatusNotifierItem Support
