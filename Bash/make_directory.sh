#Cum creati un director daca acesta nu exista in Linux
#!/bin/bash
 
directory="/home/user/documents/important"
 
if [ ! -d "$directory" ]; then
    mkdir -p "$directory"
    echo "Directory '$directory' created."
else
    echo "Directory '$directory' already exists."
fi