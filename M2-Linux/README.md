# Introduction

This module provides a basic understand on Linux operating system. It is not intended to be a complete guide, but rather a starting point for those who are new to Linux.

## What is Linux?

Linux is a Unix-like computer operating system assembled under the model of free and open-source software development and distribution. The defining component of Linux is the Linux kernel, an operating system kernel first released on September 17, 1991, by Linus Torvalds. The Free Software Foundation uses the name GNU/Linux to describe the operating system.

## What is a Linux distribution?

A Linux distribution (or distro for short) is an operating system made from a software collection. It is based on the Linux kernel and, using the portage system, consists of many software packages from the GNU project and other free and open-source software.

## What is a Linux kernel?

The Linux kernel is a free and open-source, monolithic, Unix-like operating system kernel. The Linux kernel was created as a free and open-source alternative to the proprietary Unix-like operating systems of the time, such as Minix and BSD. The Linux kernel is released under the GNU General Public License version 2 (GPLv2), and is thus free and open-source software.

## What is a Linux shell?

A shell is a command-line interpreter or shell that provides a traditional Unix-like command line user interface. The shell is both an interactive command language and a scripting language, and is used to access operating system services as well as run programs.

## What is a Linux terminal?

A terminal is a computer device that is used to enter data into, and display data from, a computer or a computing system. A terminal may be a dedicated computer terminal that is connected to a host computer by a serial cable, or it may be a computer monitor and keyboard that are connected to a host computer by a network.

## What is a Linux file system?

A file system or filesystem controls how data is stored and retrieved. Without a file system, information placed in a storage medium would be one large body of data with no way to tell where one piece of information stops and the next begins. By separating the data into individual pieces and giving each piece a name, the information is easily isolated and identified. A file system organizes information into files. A file is a named collection of related information that is recorded on secondary storage.

### What is a Linux file system hierarchy?

The Linux file system hierarchy is a standard way of organizing files and directories on a Linux system. It is based on the Filesystem Hierarchy Standard (FHS), which is a standard for the organization of files on Unix-like operating systems.

Hierarchy of Linux file system:

* /bin - Essential command binaries
* /boot - Boot loader files
* /dev - Device files
* /etc - Host-specific system-wide configuration files
* /home - User home directories
* /lib - Essential shared libraries and kernel modules
* /media - Removable media such as CD-ROMs
* /mnt - Mount directory for temporarily mounting filesystems
* /opt - Add-on application software packages
* /proc - Virtual filesystem providing information about processes
* /root - Home directory for the root user
* /sbin - Essential system binaries
* /srv - Data for services provided by the system
* /tmp - Temporary files
* /usr - Secondary hierarchy
* /var - Variable data

```bash
/
├── bin -> usr/bin
├── boot
├── dev
├── etc
├── go
├── home
├── lib -> usr/lib
├── lib32 -> usr/lib32
├── lib64 -> usr/lib64
├── libx32 -> usr/libx32
├── media
├── mnt
├── opt
├── proc
├── root
├── run
├── sbin -> usr/sbin
├── srv
├── sys
├── tmp
├── usr
├── var
├── vscode
└── workspaces

```
NOTE: Some of the directories are symbolic links to other directories.

## What is a Linux package manager?

A package manager or package-management system is a collection of software tools that automates the process of installing, upgrading, configuring, and removing computer programs for a computer's operating system in a consistent manner. A package manager deals with packages, distributions of software and data in archive files, that are used for both installation and upgrading.

example: apt, yum, dnf, pacman, zypper, etc.

Linux package manager commands:

* apt-get install package_name
* apt-get remove package_name
* apt-get update
* apt-get upgrade
* apt-get dist-upgrade

## Introduction to Command Line Interface (CLI)

A command-line interface (CLI) is a means of interacting with a computer program where the user (or client) issues commands to the program in the form of successive lines of text (command lines). The program in turn gives the results back to the user in the form of text output.

### Basic Linux commands

* ls - list directory contents
* cd - change directory
* pwd - print name of current/working directory
* mkdir - make directories
* touch - create empty files or change file timestamps
* cp - copy files and directories
* mv - move (rename) files
* rm - remove files or directories
* cat - concatenate files and print on the standard output
* less - file perusal filter for crt viewing
* grep - print lines matching a pattern

### Linux Commands Cheat Sheet

#### Creare a Directory

```bash
mkdir directory_name
```

#### Change Directory

```bash
cd directory_name
```

#### List Directory Contents

```bash
ls
```

#### List Directory Contents (long format)

```bash
ls -l
```

#### Create a File

```bash
touch file_name
```

#### Copy a File

```bash
cp file_name new_file_name
```

#### Copy a Directory

```bash
cp -r directory_name new_directory_name
```

#### remove a File

```bash
rm file_name
```

#### remove a Directory

```bash
rm -r directory_name
```

#### Add a User

```bash
adduser user_name
```

#### Add a User to a Group

```bash
usermod -a -G group_name user_name
```

## Introduction to user management

### What is a Linux user?

A user is a person who uses a computer or network service. Users generally use a system or a software product without the technical expertise required to fully understand it. Power users use advanced features of programs, though they are not necessarily capable of computer programming and system administration.

### What is a Linux group?

A group is a collection of users who have the same permissions to access files and directories. A group is a collection of users who have the same permissions to access files and directories. A group is a collection of users who have the same permissions to access files and directories.

### What is a Linux user group?

A user group is a collection of users who have the same permissions to access files and directories. A user group is a collection of users who have the same permissions to access files and directories. A user group is a collection of users who have the same permissions to access files and directories.

### What is a Linux superuser?

A superuser is a special user account used for system administration. A superuser is a special user account used for system administration. A superuser is a special user account used for system administration.

### What is a Linux root user?

The root user is the administrative user in a Linux environment that has very broad privileges. The root user is the administrative user in a Linux environment that has very broad privileges. The root user is the administrative user in a Linux environment that has very broad privileges.

### Adding new users to a Linux system

```bash
adduser user_name
```

### Adding new users to a Linux system with a home directory

```bash
adduser --home /home/user_name user_name
```

### Adding new users to a Linux system with a home directory and a group

```bash
adduser --home /home/user_name --group user_name
```

### Adding new groups to a Linux system

```bash
addgroup group_name
```

### Adding a user to a group

```bash
usermod -a -G group_name user_name
```

### Adding a user to multiple groups

```bash
usermod -a -G group_name1,group_name2,group_name3 user_name
```

## Introduction to Linux file permissions

Linux file permissions are used to control access to files and directories. Each file and directory on a Linux system has three sets of permissions: user, group, and other. Each of these sets has read, write, and execute permissions.

### Linux file permissions

* r - read
* w - write
* x - execute

### Linux file permissions for user, group, and other

* u - user
* g - group
* o - other

### Linux file permissions hierarchy

* rwx - read, write, and execute
* rw- - read and write
* r-x - read and execute
* r-- - read only
* -wx - write and execute
* -w- - write only
* --x - execute only
* --- - no permissions

### How linux numeric file permissions work?

* r = 4
* w = 2
* x = 1

### Linux file permissions metrix

* rwxrwxrwx - 777 (full access)
* rw-rw-rw- - 666 (read and write)
* rwxr-xr-x - 755 (read, write, and execute)
* r-xr-xr-x - 555 (read and execute)
* r--r--r-- - 444 (read only)
* rwx------ - 700 (read, write, and execute for user only)
* rw------- - 600 (read and write for user only)
* r-------- - 400 (read only for user only)

![Linux file permissions](./assets/linux-file-permission.jpg)