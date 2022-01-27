# Turn on background transparency
Set background transparent to true in Neovim located in:
```console
nvim ~/.local/share/nvim/site/pack/packer/start/darkplus.nvim/lua/darkplus/config.lua
```

# Allow the adapter to attach to the runInTerminal
Yama is a linux security module. Depending on the settings
it ensures that a process cannot access the memory/state of another process.
That's usually a good thing, but for debuggin can get in the way.
[Yama](https://www.kernel.org/doc/html/latest/admin-guide/LSM/Yama.html)
Quick Fix:
```
echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope ?
```

# Icons and Emojis
Visit the following link:
[emoji](https://emojipedia.org)
