<div id="top"></div>

<div style="text-align:center"><img src="images/cover_image.jpg" /></div>

## 1. Introduction

Welcome to my Bash Script Repository! Each script in this repository has been
crafted to address specific needs and can be customized to suit your
requirements. Whether you need to monitor system resources, manage user
accounts, or perform routine maintenance tasks, this repository offers a wide
range of practical examples that demonstrate the flexibility and capabilities of
Bash scripting in Linux environments.

Feel free to explore, modify, and utilize these scripts to improve your
productivity, optimize your workflows, and expand your understanding of what can
be accomplished with Bash scripts. Happy scripting!

## 2. Scripts

### 2.1 Backup

`backup.sh`: This script creates a compressed backup of a specified source directory and
saves it in a backup directory with a timestamp in the filename.

To run:

```bash
chmod +x script_name.sh
```

Execute:

```bash
./script_name.sh
```

### 2.2 System Info

`sys_info`: This script displays a summary of system information, including the hostname,
uptime, free memory, disk usage percentage, and CPU usage percentage. It
utilizes various Linux commands such as hostname, uptime, free, df, and top,
along with text processing utilities like grep and awk, to extract and display
the relevant information.

To run:

```bash
chmod +x script_name.sh
```

Execute:

```bash
./script_name.sh
```

### 2.3 Create a User

`new_user`: This script creates a new user account on a Linux system with the provided
username and password. It checks if the correct number of arguments (2) is
provided, and if not, it displays the proper usage and exits. If the correct
number of arguments is supplied, the script proceeds to create the user with the
useradd command and sets the account password using chpasswd. Finally, it
confirms the user creation with a success message.

To run:

```bash
chmod +x script_name.sh
```

Execute:

```bash
./script_name.sh
```

### 2.4 Monitor Availability

`web_monitor.sh`: This script monitors the availability of a list of websites and sends an email
notification if any of them are down. It uses curl to check the HTTP status code
for each website and writes the status to a temporary file if the code is not
200 (OK). If any websites are found to be down, the script sends an email with
the details using the mail command. Finally, it cleans up the temporary file
after processing.

To run:
1. Make sure to replace the WEBSITES_LIST variable with the list of websites you want to monitor.
2. Update the EMAIL_TO variable with your email address where you want to receive notifications.
3. Make the script executable:

```bash
chmod +x website_monitor.sh
```
4. Execute the script:

```bash
./web_monitor.sh
```

For continuous monitoring, you can schedule this script to run periodically
using cron. For example, to run the script every 5 minutes, you can add the
following line to your crontab:

```bash
*/5 * * * * /path/to/website_monitor.sh
```

To edit your crontab, run:

```bash
crontab -e
```

<p align="right">(<a href="#top">back to top</a>)</p>

## 3. Contributing

If you would like to add any extra features to the optimisation simulation, feel free to fork and create a pull request. Thank you!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#top">back to top</a>)</p>


<!-- CONTACT -->
## 4. Contact

Erol Gelbul - [Website](http://www.erolgelbul.com)

Project Link: [Bash Scripts](https://github.com/ErolGelbul/bash_scripts)

<p align="right">(<a href="#top">back to top</a>)</p>
