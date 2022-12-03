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
