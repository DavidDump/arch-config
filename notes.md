# Notes
## Resising file system
```bash
sudo fdisk /dev/sda
```
Delete the partition you want to resite
Create a new partition with the same start sector
```bash
resize2fs /dev/sda2
```
The name of the file system is the partition that was resized
