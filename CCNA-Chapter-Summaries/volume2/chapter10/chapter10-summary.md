# Chapter 10: Securing Network Devices

## Securing IOS Passwords

*   The best way to secure passwords in Cisco IOS devices is to not store passwords in IOS devices.
*   For any functions that can use an external authentication, authorization, and accounting (AAA) server, use it.
*   It is common to store some passwords in a router or switch configuration.
*   This section discusses some of the ways to protect those passwords.
*   This section looks at ways to avoid keeping clear-text passwords in the configuration and storing the passwords in ways that make it difficult for attackers to learn the password.

### Encrypting Older IOS Passwords with service password-encryption

*   Some older-style IOS passwords create a security exposure because the passwords exist in the configuration file as clear text.
*   These clear-text passwords might be seen in printed versions of the configuration files, in a backup copy of the configuration file stored on a server, or as displayed on a network engineer’s display.
*   Cisco attempted to solve this clear-text problem by adding a command to encrypt those passwords: the `service password-encryption` global configuration command.
*   This command encrypts passwords that are normally held as clear text, specifically the passwords for these commands:

    ```
    password password (console or vty mode)
    username name password password (global)
    enable password password (global)
    ```

    *   The encryption process hides the original clear-text password.
    *   IOS adds the encryption or encoding type of “7” to the command, which specifically refers to passwords encrypted with the `service password-encryption` command.
    *   While the `service password-encryption` global command encrypts passwords, the `no service password-encryption` global command does not immediately decrypt the passwords back to their clear-text state.
    *   After you enter the `no service password-encryption` command, the passwords remain encrypted until you change a password.
    *   The `service password-encryption` command will slow down the curious, but it will not stop a knowledgeable attacker.

### Encoding the Enable Passwords with Hashes

*   In the earliest days of IOS, Cisco used the `enable password password` global command to define the password that users had to use to reach enable mode (after using the `enable` EXEC command).
*   The `enable password password` command stored the password as clear text, and the `service password-encryption` command encrypted the password in a way that was easily decrypted.
*   Cisco solved the problem of only weak ways to store the password of the `enable password password` global command by making a more secure replacement: the `enable secret password` global command.
*   Both of these commands exist in IOS even today.

#### Interactions Between Enable Password and Enable Secret

*   Use the `enable secret password` global command, and ignore the `enable password password` global command.
*   That has been true for around 20 years.
*   Cisco has never removed the much weaker `enable password` command from IOS.
*   On a single switch (or router), you can configure one or the other, both, or neither.
*   The switch expects you to type the password to reach enable mode as follows:

    *   Both commands configured: Users must use the password in the `enable secret password` command (and ignore the `enable password password` command).
    *   Only one command configured: Use the password in that one command.
    *   Neither command configured (default): Console users move directly to enable mode without a password prompt; Telnet and SSH users are rejected with no option to supply an enable password.

#### Making the Enable Secret Truly Secret with a Hash

*   The Cisco `enable secret` command protects the password value by never even storing the clear-text password in the configuration.
*   By default, IOS uses a hash function called Message Digest 5 (MD5) to store an alternative value in the configuration, rather than the clear-text password.
*   MD5 is a complex mathematical one-way formula.
*   This formula is chosen so that even if you know the exact result of the formula—that is, the result after feeding the clear-text password through the formula as input—it is computationally difficult to compute the original clear-text password.
*   The switch can make a comparison when a user types a password after using the `enable` EXEC command as follows:

    *   IOS computes the MD5 hash of the password in the enable secret command and stores the hash of the password in the configuration.
    *   When the user types the enable command to reach enable mode, a password that needs to be checked against that configuration command, IOS hashes the clear-text password as typed by the user.
    *   IOS compares the two hashed values: if they are the same, the user-typed password must be the same as the configured password.

    *   As a result, IOS can store the hash of the password but never store the clear-text password; however, it can still determine whether the user typed the same password.
    *   The example shows the stored (hashed) value as revealed in the `show running-configuration` command output.
    *   That output also shows that IOS changed the `enable secret fred` command to list the encryption type 5 (which means the listed password is actually an MD5 hash of the clear-text password).
    *   The gobbledygook long text string is the hash, preventing others from reading the password.
    *   The end of the example also shows an important side point about deleting the enable secret password: after you are in enable mode, you can delete the enable secret password using the `no enable secret` command, without even having to enter the password value.
    *   You can also overwrite the old password by just repeating the `enable secret` command.
    *   But you cannot view the original clear-text password.

#### Improved Hashes for Cisco's Enable Secret

*   The use of any hash function to encode passwords relies on several key features of the particular hash function.
*   In particular, every possible input value must result in a single hashed value, so that when users type a password, only one password value matches each hashed value.
*   The hash algorithm must result in computationally difficult math (in other words, a pain in the neck) to compute the clear-text password based on the hashed value to discourage attackers.
*   The MD5 hash algorithm has been around 30 years.
*   Over those years, computers have gotten much faster, and researchers have found creative ways to attack the MD5 algorithm, making MD5 less challenging to crack.
*   Someone who saw your running configuration would have an easier time re-creating your clear-text secret passwords than in the early years of MD5.
*   These facts are not meant to say that MD5 is bad, but like many cryptographic functions before MD5, progress has been made, and new functions were needed.
*   Cisco added two additional hashes in the 2010s.
*   Cisco continues to use types 8 and 9.
*   Cisco found a security exposure with their type 4 password implementation, so they deprecated it, later replacing it with type 8.
*   Both types 4 and 8 use the same underlying algorithm (PBKDF2) that combines with the SHA-256 algorithm.
*   Type 9 uses a different hash algorithm called Scrypt (pronounced “es crypt.”)
*   IOS now supports two alternative algorithm types in the more recent router and switch IOS images.
*   The example shows that only one `enable secret` command should exist between those three commands.
*   If you configure another `enable secret` command with a different algorithm type, that command replaces any existing `enable secret` command.

### Encoding the Passwords for Local Usernames

*   The `username password` and `username secret` commands have a similar history to the `enable password` and `enable secret` commands.
*   Originally, IOS supported the `username user password password` command.
*   Many years later, Cisco added the `username user secret password` global command, which encoded the password as an MD5 hash, with Cisco adding support for the newer hashes later.
*   Cisco uses the term local username to refer to these usernames configured on individual routers and switches, in contrast to those configured centrally on a AAA server.
*   The `username secret` command is preferred over the `username password` command.
*   IOS allows only one `username` command for a given username—either a `username name password password` command or a `username name secret password` command.
*   IOS allows a mix of commands (`username password` and `username secret`) in the same router or switch (for different usernames).
*   IOS on both switches and routers uses the additional encoding options beyond MD5, just as supported with the `enable secret` command.