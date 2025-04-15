#!/bin/bash
# Atomate the remote file transfer

# Declare variables
scr_dir="/local/path"
dest_user="user"
dest_server="server.com"
dest_dir="/remote/path"

scp -r $scr_dir $dest_user@$dest_server:$dest_dir
echo "Files transferred to $dest_server"