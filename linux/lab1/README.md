# Lab 1: MySQL Backup Automation using Shell Script and Cron

## Objective
Automate MySQL database backup using a shell script and schedule it to run daily at 5:00 PM using `cron`.

---

## Requirements
- Ubuntu (tested on 20.04/22.04)
- MySQL Server installed
- User with `sudo` privileges

---

```bash
head -n 10 /root/linux/lab1/mysql_backups/MySQL_backup_*.sql
```

### Check Cron Jobs:

```bash
crontab -l
```

---

### Inspect Backup File:

```bash
head -n 10 /root/linux/lab1/mysql_backups/MySQL_backup_*.sql
```

Expected output (example):

```
-- MySQL dump 10.13  Distrib ...
-- Host: localhost    Database:
```

---

## Author
Lab 1 - Shell Scripting Basics for MySQL Backup (Ubuntu)

