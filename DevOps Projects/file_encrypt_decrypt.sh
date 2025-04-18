#!/bin/bash
# File Encryption and Decryption Script

gpg --output encrypted_file.gpg --encrypt --recipient recipient@example.com plaintext_file.txt
gpg --output decrypted_file.txt --decrypt encryted_file.txt.gpg