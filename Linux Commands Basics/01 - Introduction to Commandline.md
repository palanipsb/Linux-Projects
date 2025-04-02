# Introduction to the command Line
## Basic Commands
```bash
date        # Show current date and time
cal         # Display current month calendar
cal -y      # Display entire year calendar
cal 1990    # Display calendar for year 1990
cal 1 1995  # Display calendar for January 1995
cal -3      # Display previous, current, and next month

## The Directory Tree
```sh
/
├── /bin    - Binary executables (commands used by all users)
├── /opt    - Optional/Commercial software
├── /home   - User directories
├── /tmp    - Temporary files
└── /var    - Variable data (logs, mail spools, databases)

current # diretory represented by . (bin)
parent # diretory represented by .. (/)
```

## Absolute path vs relative paths
### Absolute path

    Absolute Path
    Begins with root directory (/):
    ex: /home/john/documents/phone.txt

    Relative Path
    Begins with current directory:
    ex: ./documents/phone.txt


## Navigation
```bash
pwd         # Print working directory
ls          # List files
cd          # Change directory
cd /home/user  # Go to specific directory
cd /        # Go to root
cd ~        # Go to home
cd ..       # Go to parent directory
cd -        # Return to previous directory
```
## Listing Files and Directories
```bash
ls /        # List root directory
ls ~        # List home directory
ls ..       # List parent directory
ls ./dir    # List child directory
```

## Linux Links
Every file has an inode containing metadata (except file content).

### Soft Link (Symbolic Link)
    Like a shortcut
    Different inode number
    Becomes useless if original is deleted
    Can link directories

### Hard Link
    Alternate name for same file
    Same inode number
    Unaffected if original is deleted
    Cannot link directories

### creating hard and soft links
```bash
ln file linkname                # Create hard link
ln -s file linkname             # Create soft link, we can create soft link for directory, but not for hard link.
ls -i                           # Show inode numbers
ls -l                           # Show detailed listing
ln <filename> <link name>       # ex: ln original hardlink1
ln -s <filename> <link name>    # ex: ln -s original softlink1
```

### ls commands - directory loop
    create directory a and b inside b, then create soft link inside be called c like below.
```bash
ls -a:                  #this will list all child and parent, hidden, directories, file.
                        # ex: . .. .hidden dir1
ls -t                   # this will list the file/directory based on time created order.
ls -r                   # this will list the file/directory based on time created order reverse.
ls -R                   # this will list all the files/Directory under all files and directory recursivly
ls -i -l or ls -il      # this will list long listing combined
ls -a -i -l or -ali     # this will list all long listing combined
ls -lat                 # this will list with date modified
ls -lart                # this will provide date modified by ordered
ln -s ~/a c
```