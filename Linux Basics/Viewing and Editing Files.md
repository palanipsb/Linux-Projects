# Viewing and Editing Files
## graphical text editor
```bash
gedit <filename> # this is useful for file edit in UI mode
```
## nano editor
```bash
nano <filename>     # this is useful for file edit in nano UI mode
```
## command line history
```bash
windows v       # this will list all commands used
history         # this command will list history with id, we can use !85 to execute 85th command
.bash_history   # this will have history of commands
history 10      # last 10 commands
history -c      # clear history commands
```
## viewing text files with less
```bash
        less <filename> # this will be used to view file content, but not editable
```
## viewing file with cat and tac
```bash
cat <filename>              # content of the file
tac <filename>              # content of file in reverse order
cat <filename1> <filename2> # content of both the files
```
## head and tails commands
```bash
head <filename>         # display first 10 lines
head -n 20 <filename>   # display first 20 lines
tail <filename>         # display last 10 lines
tail -n 20 <filename>   # display last 20 lines
```
## The wc command
```bash
wc <filename>       # line number, word number, byte/character numbers
wc - l <filename>   # line number
wc - w <filename>   # word number
wc - m <filename>   # byte/character numbers
wc - c <filename>   # byte/character numbers
```