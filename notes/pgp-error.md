## PGP Error
Invalid or corrupted package error is caused by infrequent updates, because pacman will recheck PGP integrety, more info [here](https://wiki.archlinux.org/title/Pacman#.22Failed_to_commit_transaction_.28invalid_or_corrupted_package.29.22_error).
It can be fixed by running:
```bash
sudo pacman -S archlinux-keyring
```

## Rate mirrors
Potential cause for problems is mirror becoming inactive, out of synch or other, so the mirror list should also be updated regularly.[Rate-mirrors](https://github.com/westandskif/rate-mirrors) is a utility for doing this automatically. [This](https://github.com/westandskif/rate-mirrors#example-of-everyday-use-on-arch-linux) section explains setting up aliases for auto update and cleaninig the cashes.