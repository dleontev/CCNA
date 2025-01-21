## Chapter 10: Securing Network Devices

### Configuration Commands

| Command | Mode | Purpose/Description |
|---|---|---|
| `line console 0` | Global | Changes the context to console configuration mode. |
| `line vty 1st-vty last-vty` | Global | Changes the context to vty configuration mode for the range of vty lines listed in the command. |
| `login` | Console/vty | Tells IOS to prompt for a password. |
| `password pass-value` | Console/vty | Lists the password required if the login command is configured. |
| `login local` | Console/vty | Tells IOS to prompt for a username and password, to be checked against locally configured username global configuration commands. |
| `username name [algorithm-type md5 | sha256 | scrypt] secret pass-value` | Global | Defines one of possibly multiple usernames and associated passwords, stored as a hashed value (default MD5), with other hash options as well. |
| `username name password pass-value` | Global | Defines a username and password, stored in clear text in the configuration by default. |
| `crypto key generate rsa [modulus 512 | 768 | 1024]` | Global | Creates and stores (in a hidden location in flash memory) the keys required by SSH. |
| `transport input {telnet | ssh | all | none}` | vty | Defines whether Telnet and/or SSH access is allowed into this switch. |
| `[no] service password-encryption` | Global | Encrypts all clear-text passwords in the running-config. The no version of the command disables the encryption of passwords when the password is set. |
| `enable password pass-value` | Global | Creates the enable password, stored as a clear text instead of a hashed value. |
| `enable [algorithm-type md5 | sha256 | scrypt] secret pass-value` | Global | Creates the enable password, stored as a hashed value instead of clear text, with the hash defined by the algorithm type. |
| `no enable secret` | Global | Deletes the enable secret command. |
| `no enable password` | Global | Deletes the enable password command. |


### EXEC Commands

| Command | Purpose |
|---|---|
| `show running-config | section vty` | Lists the vty lines and subcommands from the configuration. |
| `show running-config | section con` | Lists the console and subcommands from the configuration. |
| `show running-config | include enable` | Lists all lines in the configuration with the word enable. |