!/bin/bash

# Set variable for base path
base_path="C:/xampp/mysql"

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

# Copy necessary folders from data_old to new data, copy all folders except mysql, performance_schema, and phpmyadmin
for d in "$base_path/data_old"/*; do
    if [ "$d" != "$base_path/data_old/mysql" ] && [ "$d" != "$base_path/data_old/performance_schema" ] && [ "$d" != "$base_path/data_old/phpmyadmin" ]; then
        cp -r "$d" "$base_path/data/"
    fi
done

# Copy ibdata1 file from data_old to new data folder
cp "$base_path/data_old/ibdata1" "$base_path/data/"
