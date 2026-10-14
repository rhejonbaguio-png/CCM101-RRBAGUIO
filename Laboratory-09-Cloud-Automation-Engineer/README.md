# Laboratory 09: The Cloud Automation Engineer

## Mission Overview

This laboratory focuses on automating routine cloud operations using Bash scripting and Cron. I created a sample application directory, wrote a backup script to compress its contents, and configured a schedule for automatic backups.

## Objectives

- Understand basic Bash scripting and variables.
- Create and save a script using the nano text editor.
- Modify file permissions using `chmod`.
- Run a script that creates a compressed backup.
- Configure and verify a Cron job.
- Document the automation process in Markdown.

## Commands Executed

### 1. Create Sample Application Data

```bash
mkdir -p app-data
echo "This is critical client data." > app-data/data.txt
cat app-data/data.txt
```

### 2. Create the Backup Script

```bash
nano backup.sh
```

### 3. Set Permissions and Run the Script

```bash
chmod +x backup.sh
./backup.sh
```

### 4. Verify the Backup File

```bash
ls -l backups/
```

### 5. Configure and Verify Cron

```bash
env EDITOR=nano crontab -e
crontab -l
```

Cron schedule:

```bash
0 2 * * * /root/backup.sh
```

This schedule runs the backup script every day at 2:00 AM, based on the system's time zone. The script must be saved at `/root/backup.sh` for this exact schedule to work.

## Skills Learned

- Creating and executing Bash scripts.
- Using variables to generate timestamps.
- Compressing files into `.tar.gz` archives.
- Managing file execution permissions.
- Scheduling tasks using Linux Cron.
- Documenting cloud automation tasks in GitHub.
