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

Compton transparency and blur are slow in a VM so I cant test it. This is the command I came up with so far, needs some tweeking with the `--backend` option, default is `xrender` but `glx` aka OpenGL migh be better. Also test other `--active-opacity` optons.
```sh
picom --no-fading-openclose --blur-background --active-opacity 0.95 --backend glx --glx-no-rebind-pixmap --no-vsync
```
