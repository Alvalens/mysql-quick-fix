# XAMPP MySQL Database Fix Script

This Bash script automates the process of fixing MySQL database issues on XAMPP by renaming folders and copying necessary files. Ensure you have backup folder in the same directory as mysql

> **try commend or uncomment the copy of ibdata1 if you still revice any error**
>
> CAUTION: IF YOU DELETE IBDATA1 YOULL LOSE YOUR TABLE
> frurther reference:
> [https://stackoverflow.com/questions/21279442/xampp-mysql-not-starting-attempting-to-start-mysql-service](https://stackoverflow.com/questions/21279442/xampp-mysql-not-starting-attempting-to-start-mysql-service)
>
> [https://stackoverflow.com/questions/18022809/how-can-i-solve-error-mysql-shutdown-unexpectedly](https://stackoverflow.com/questions/18022809/how-can-i-solve-error-mysql-shutdown-unexpectedly)

## Usage

1. Download the script to your local machine.
2. Open the script in a text editor and customize the `base_path` variable to match your XAMPP Mysql installation directory.
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
