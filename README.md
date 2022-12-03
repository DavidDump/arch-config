# Notes

## Autologin
Copy the autologin.conf to this location
```sh
cp autologin.conf /etc/systemd/system/getty@tty1.service.d/autologin.conf
```
## All the packages that need to be installed
```sh
sudo pacman -S xorg xorg-xinit libx11 i3-gaps alacritty nitrogen htop polybar nnn
```
For NVIDIA:
```sh
sudo pacman -S nvidia nvidia-utils nvidia-settings
```
## Switching 'y' and 'z'
### Switch for tty terminal
Switch to root user
```sh
cp /usr/share/kbd/keymaps/i386/qwerty/us.map.gz /root/custom-layout.map.gz
gzip -d custom-layout.map.gz
nano custom-layout.map.gz
```
change the import from 'qwerty' to 'qwertz'
```sh
gzip custom.map
cp /usr/share/kbd/keymaps/i386/qwertz/custom-layout.map.gz
nano /ect/vconsole.conf
```
change the layout to 'custom-layout'

### Switch for Xorg
Change the layout in here from 'us' to 'custom-layout'
```sh
sudo nano /etc/X11/xorg.conf.d/00-keyboard.conf
```

### Switch for window manager
Edit the keys here
```sh
sudo nano /usr/share/X11/xkb/symbols/us
```
## Notes
### Resising file system
```sh
sudo fdisk /dev/sda
```
Delete the partition you want to resize
`/dev/sda` should be the name of the file sytem
You can find all available file systems with `fdisk --list`
In fdisk 'p' to list all the partitions, 

Create a new partition with the same start sector
```sh
resize2fs /dev/sda2
```
The name of the file system is the partition that was resized
## PGP Error
Invalid or corrupted package error is caused by infrequent updates, because pacman will recheck PGP integrety, more info [here](https://wiki.archlinux.org/title/Pacman#.22Failed_to_commit_transaction_.28invalid_or_corrupted_package.29.22_error).
It can be fixed by running:
```bash
sudo pacman -S archlinux-keyring
```

## Rate mirrors
Potential cause for problems is mirror becoming inactive, out of synch or other, so the mirror list should also be updated regularly. [Rate-mirrors](https://github.com/westandskif/rate-mirrors) is a utility for doing this automatically. [This](https://github.com/westandskif/rate-mirrors#example-of-everyday-use-on-arch-linux) section explains setting up aliases for auto update and cleaninig the cashes.
## Programs that are good to have after initial install
pacman packages
```sh
sudo pacman -S feh youtube-dl
```
AUR packages
```sh
yay mpv streamlink chatterino2 rate-mirrors
```
## Installing rlwrap
Rlwrap is a readline wrapper for programs that dont have one built in, useful tool, this is the installation
```sh
git clone https://github.com/hanslub42/rlwrap
autoreconf --install
./configure
make
sudo make install
```
## Transparency
Dependency that I was missing in the VM, full list on repo
```sh
sudo pacman -S asciidoc
```

Install compton
```sh
git clone https://github.com/chjj/compton.git
cd compton
make
make docs
make install
```
## Installing yay

```sh
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```
