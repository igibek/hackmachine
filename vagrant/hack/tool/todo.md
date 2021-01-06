# File Upload Vulnerability

- [ ] Find the supported executable. For example: bash, php, python, .exe, binary and etc
- [ ] Find file upload functionality
- [ ] Check if filename/location is predictable
- [ ] Modify the Content-Type
- [ ] Modify the file extension

# Code Execution Vulnerability

- [ ] Use the pipe (|) to escapte semicolon filtering

# Local File Inclusion
With LFI you can get the reverse shell by writing the PHP command into the environment files (`/proc/self/environ`)

- [ ] 

# Remote File Inclusion

# SQL Injections
SQL Injection is high severity vulnerability. You can read/write files to the server using `load_file`/`out` [function](https://www.w3resource.com/mysql/string-functions/mysql-load_file-function.php#:~:text=MySQL%20LOAD_FILE%20fucntion%20is%20several%20conditions%20to%20be,path%20name%20of%20the%20file%20must%20be%20specified.) in MySQL. Usually, SQL vulnerabilities will be blind type, that is why do not expect some error messages. You can get reverse shell by writing file with php `passthru` function.

- [ ] Test with TRUE/FALSE statements. For example: `order by 1`, `1 = 1`, `order by 10000`, `1 = 2`
