# Switching 'y' and 'z'
## Switch for tty terminal
Switch to root user
```bash
cp /usr/share/kbd/keymaps/i386/qwerty/us.map.gz /root/custom-layout.map.gz
gzip -d custom-layout.map.gz
nano custom-layout.map.gz
```
change the import from 'qwerty' to 'qwertz'
```bash
gzip custom.map
cp /usr/share/kbd/keymaps/i386/qwertz/custom-layout.map.gz
nano /ect/vconsole.conf
```
change the layout to 'custom-layout'

## Switch for Xorg
Change the layout in here from 'us' to 'custom-layout'
```bash
sudo nano /etc/X11/xorg.conf.d/00-keyboard.conf
```

## Switch for window manager
Edit the keys here
```bash
sudo nano /usr/share/X11/xkb/symbols/us
```
