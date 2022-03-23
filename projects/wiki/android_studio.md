# Installing Android Studio in `DWM`
```console
export _JAVA_AWT_WM_NONREPARENTING=1
```
# Enable your mobile to be used as `AVD` (Android Virtual Device)
For Samsung Galaxy go to: `settings -> About Device -> Software Info -> Build (tap 7 times)`
The Developer tools should appear in a previous step of your phone.

# Install `ADB` (Android Debug Bridge)
On Arch Linux
```
console
sudo pacman -S scrcpy
```
Check if your android device is plugged via USB:
```
console
adb devices
```
