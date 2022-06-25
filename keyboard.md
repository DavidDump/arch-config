# Switching 'y' and 'z'
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
