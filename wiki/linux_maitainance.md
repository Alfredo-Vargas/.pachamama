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
