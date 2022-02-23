# Check for the window property under the Xorg server
The action below is just clicking on any windows where the application is running.
```
xprop <action>
```

# Check the key property under the Xorg server 
Just press a button after running
```console
xev
```

# Check if any system services have failed
```console
  systemctl --failed
```

# Check the log files at
```console
cd /var/log/
```

# Check for high priority errors in the systemd journal
```console
journalctl -p 3 -b
```

# DWM Suckless window manager
To apply a patch
```console
patch -p1 < patch.diff
```

# Check the battery of your laptop
Using the binary `upower`
```console
upower -i $(upower -e | grep BAT) | grep --color=never -E "state|to\ full|to\ empty|percentage"
```
