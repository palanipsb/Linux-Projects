# Combining Multiple Commands
## Combining Commands
        semicolon - This will execute all valid commands.
```bash        
comand1; command2; command3
mkdir c; date >> c/today; cat c/today
```
        Double Ampersand - This will execute all commands until it find its first incorrect command and exit.
```bash
comand1 && command2 && command3
mkdir number1 && date >> file1 && cat file1
```
## Wildcards
        It is a symbol that represents one or more characters
```bash        
*                   # represents (matches ) and chars
cp * <dir>          # copy all files to the directory
rm *                # remove all files in a directory
cp file* dir1
cp *.txt dir1
cp t*t dir1

?                   # represents (matches ) single char
cp t?xt* c          # this will copy file name that ignore/doesnt care second char and after t*

[range]             # represents (matches) ramge of characters
cp [abc]* dir       # copy files that starts with a or b or c to dir
cp [!abc]* dir      # copy files that does not starts with a or b or c to dir
cp [0-9]* dir       # copy files that starts with 0 to 9 to dir
cp [!0-9]* dir      # copy files that does not starts with 0 to 9 to dir
cp [[:upper:]]* dir # copy files that starts with upper case letter to dir
cp [[:lower:]]* dir # copy files that starts with lower case letter to dir
cp [[:digit:]]* dir # copy files that starts with digit to dir
cp [![:digit:]]* dir # copy files that does not starts with digit to dir
cp [[:alpha:]]* dir # copy files that starts with aplphabetic to dir
cp [[:alnum:]]* dir # copy files that starts with aplpha numeric to dir
```
## alias
        If we need permenant alias name, we can add it in .bashrc file in home directory
```bash
type test               # already found
type tt                 # not found, so this can be set as alias
alias newcommandname="command"
alias kgp="kubectl get pods"
unalias  <aliasname>    # remove the alias name
```

## History and Auto Complete
        Use Tab for auto-completion and history to view command history.
```bash
history          # Show command history
!85             # Execute 85th command
history -c      # Clear history
```        