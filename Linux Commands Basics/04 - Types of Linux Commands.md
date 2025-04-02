# Category/Types of Linux commands
## Types of commands
        1. executable programms
                - it will available in /bin or /usr/bin
                ex: cp
        2. Shell builtins
                ex: cd
        3. Shell scripts
                ex: .sh
        4. Alias
                create out own command
                ex: ls
```bash
type <commandname>      # will display type of the command ex: type cp
file </dir/filename>    # dispay the details like type and version
```
## which command
```bash
        wich <filename>         # display the absolute path of the file
        which reboot            # /usr/sbin/reboot; It will not display anythig for shell builtin type
```
## help and man
```bash
help <command>  # display detailed description, but not for executable programms
man cp          # display manual page on how to use this command, this is for executable files
whatis cp       # display briefly about the command
```