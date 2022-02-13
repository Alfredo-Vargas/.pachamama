# QEMU commands in Linux
  
## Check if virtualization is enable and if virtualization threads are available (Virtual CPUS):
  ```console
  LC_ALL=C lscpu | grep Virtualization
  egrep -c '(vmx|svm)' /proc/cpuinfo
  ```
## Install relevant packages
  ```console
  pacman -Sy --needed \
  qemu \
  dhclient \
  openbsd-netcat \
  virt-viewer \
  libvirt \
  dnsmasq \
  dmidecode \
  ebtables \
  virt-install \
  virt-manager \
  bridge-utils
  ```

## Allow users in wheel group to manage the libvirt daemon without authentication */
  ```console
  polkit.addRule(function(action, subject) {
      if (action.id == "org.libvirt.unix.manage" &&
          subject.isInGroup("wheel")) {
              return polkit.Result.YES;
      }
  });
  ```

## List all virtual machines
  ```console
  virsh list --all
  ```
## Check if the system and session levels work properly
  Change `~/config/libvirt/libvirt.conf`
  ```console
  sudo -c qemu:///system
  sudo -c qemu:///session
  ```
  If you choose for session you will have access to the gnome boxes virtual machines

## Location of images of libvirt
```console
cd /var/lib/libvirt/
```
## Start the default network on qemu
```console
virsh net-start default
```

## Qemu guest additions
```console
sudo pacman -S qemu-guest-agent
sudo systemctl start qemu-guest-agent
sudo systemctl enable qemu-guest-agent
```
## Clipboard sharing and multiple monitors
```console
pacman -S spice-vdagent
pacman -S xf86-video-qxl
```
More information in [QEMU-ARCH](https://wiki.archlinux.org/title/QEMU)

## Share Folder between Host and Guest
Create a directory on the host and give 777 permissions.
Add a new Hardware in virt-manager, then add a new FileSystem, choose:
Type= mount, Mode= mapped
Source path: /path/dir/in/host  (directory that exists on the host)
Targetpath: /sharepoint  (name to be used when mounted- This is not located neither in the host nor in the guest)
Then on the guest machine we create a directory, e.g "/home/paxa/wormhole" mount the directory
```console
sudo mount -t 9p -o trans=virtio /sharepoint /home/paxa/wormhole
```
To make the mounting permanent of guest add to /etc/fstab (every entry single-tab separated):
```console
/sharepoint   /home/paxa/wormhole   9p   trans=virtio,version=9p2000.L,rw   0   0
```

## Convert virtualbox disk image vdi to qcow2
```console
sudo qemu-img convert -f vdi -O qcow2 /path/to/virtualbox.vdi /path/to/store/new.qcow2
```



