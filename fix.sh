#!/bin/bash

# Function to log errors
log_error() {
    local message="$1"
    echo "$(date +'%Y-%m-%d %H:%M:%S') - ERROR: $message" >> "$base_path/script_error.log"
}

# Set variable for base path
base_path="C:/xampp/mysql"

# Check if the entered path is valid
if [ ! -d "$base_path" ]; then
    echo "Error: Invalid path. Please enter a valid path."
    exit 1
fi

# Check if data_old exists, delete it if it does
if [ -d "$base_path/data_old" ]; then
    rm -rf "$base_path/data_old"
fi

# Rename existing data folder
mv "$base_path/data" "$base_path/data_old"

# Create a new data folder
mkdir "$base_path/data"

# Copy contents of backup to the new data folder
cp -r "$base_path/backup"/* "$base_path/data/"

# Copy necessary folders from data_old to new data
for d in "$base_path/data_old"/*; do
    if [ "$d" != "$base_path/data_old/mysql" ] && [ "$d" != "$base_path/data_old/performance_schema" ] && [ "$d" != "$base_path/data_old/phpmyadmin" ]; then
        cp -r "$d" "$base_path/data/"
    fi
done

# # Copy ibdata1 file from data_old to new data folder
# cp "$base_path/data_old/ibdata1" "$base_path/data/"
# https://stackoverflow.com/questions/21279442/xampp-mysql-not-starting-attempting-to-start-mysql-service

# Check if the script encountered errors
if [ $? -eq 0 ]; then
    echo "Script executed successfully."
else
    log_error "An error occurred during script execution."
    echo "Script encountered errors. See script_error.log for details."
fi
    sleep 3
