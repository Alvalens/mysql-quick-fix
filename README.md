
# XAMPP MySQL Database Fix Script

This Bash script automates the process of fixing MySQL database issues on XAMPP by renaming folders and copying necessary files.

## Usage

1. Download the script to your local machine.
2. Open the script in a text editor and customize the `base_path` variable to match your XAMPP installation directory.
3. Make you have bash cmd (can be obtained by installing git)
4. Run the script using `./script_name.sh`.

## Features

- Renames the existing `data` folder to `data_old`.
- Creates a new `data` folder.
- Copies contents from the `backup` folder to the new `data` folder.
- Copies necessary database folders from `data_old` to `data` (excluding `mysql`, `performance_schema`, and `phpmyadmin`).
- ~~Copies the `ibdata1` file from `data_old` to `data`.~~

## Error Handling

- Provides feedback on script execution status.

## Requirements

- Bash shell environment.
- XAMPP installed on your system.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
