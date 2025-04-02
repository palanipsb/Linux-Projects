# Working with Files
## File Operations
```bash
touch file1.txt file2.txt      # Create/modify files
mkdir dirname                  # Create directory
rmdir dirname                  # Remove empty directory
rm -R dirname                  # Remove directory recursively (with contents)
rm -i file.txt                 # Interactive delete
rm -f file.txt                 # Force delete
```

## Copy/Move Files
```bash
cp file1.txt file2.txt         # Copy file
cp -R dir1 dir2                # Copy directory
mv file1.txt file2.txt         # Rename/move file
mv dir1 dir2                   # Rename/move directory
```

## Special Filenames
```bash
mkdir 'my job'       # Create directory with space
mkdir "my job"       # Alternative
mkdir my\ job        # Using escape character
mkdir \$my\ cat      # With special characters
```
