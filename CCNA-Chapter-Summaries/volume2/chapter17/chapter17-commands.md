## Chapter 17: SNMP, FTP, and TFTP

### Configuration Commands

| Command | Mode | Description |
|---|---|---|
| `boot system flash [flash-fs:] [filename]` | Global | Identifies the location of an IOS image in flash memory. |
| `boot system {tftp} filename [ip-address]` | Global | Identifies an external server, protocol, and filename to use to load an IOS from an external server. |
| `ip ftp username name` | Global | Defines the username used when referencing the ftp: IOS file system but not supplying a username. |
| `ip ftp password pass` | Global | Defines the password used when referencing the ftp: IOS file system but not supplying a password. |


### EXEC Commands

| Command | Description |
|---|---|
| `copy from-location to-location` | Copies files from one file location to another. Locations include the startup-config and running-config files, files on TFTP and RPC servers, and flash memory. |
| `show flash:` | Lists the names and size of the files in internal flash memory, and notes the amount of flash memory consumed and available. |
| `dir filesystem:/` <br> `dir filesystem:directory` | Lists the files in the referenced file system or file system directory. |
| `verify {/md5 | /sha512} filesystem:name [hash-value]` | Performs an MD5 or SHA512 hash of the referenced file and displays the results. If listed, the command compares the hash in the command with the results of performing MD5 or SHA512 hash on the local file. |
| `cd directory-name` | If the directory exists, this command changes the present working directory (pwd) variable to refer to the listed directory. |
| `cd ..` | Changes the present working directory setting to one directory above the current directory. |
| `pwd` | Displays the present working directory, a variable used by commands like dir to identify a file system directory in which to check for files needed for a command. |
