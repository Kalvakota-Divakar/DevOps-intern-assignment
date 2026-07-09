
## Objective

Deploy a simple website on an AWS EC2 Ubuntu instance using Nginx and document the complete deployment process.

---

# AWS Services Used

- Amazon EC2
- Amazon VPC
- Security Group
- Internet Gateway

---

# EC2 Instance Details

- **Operating System:** Ubuntu Server 24.04 LTS
- **Instance Type:** t2.micro
- **Region:** us-east-1
- **Web Server:** Nginx

---

# EC2 Setup Steps

1. Logged in to the AWS Management Console.
2. Launched an Ubuntu 24.04 LTS EC2 instance.
3. Created a Security Group.
4. Allowed the following inbound rules:
   - SSH (Port 22)
   - HTTP (Port 80)
5. Connected to the EC2 instance using SSH.

---

# SSH Connection

SSH Command:

```bash
ssh -i DevOps-intern-Key.pem ubuntu@<EC2-Public-IP>
```

Example:

```bash
ssh -i DevOps-intern-Key.pem ubuntu@98.81.233.79
```

---

# Linux Commands Used

## Update Packages

```bash
sudo apt update
sudo apt upgrade -y
```

## Install Nginx

```bash
sudo apt install nginx -y
```

## Check Nginx Status

```bash
sudo systemctl status nginx
```

## Restart Nginx

```bash
sudo systemctl restart nginx
```

## Check Disk Usage

```bash
df -h
```

## Check Memory Usage

```bash
free -h
```

## View Running Processes

```bash
ps aux
```

---

# Website Deployment

Navigate to the Nginx web directory.

```bash
cd /var/www/html
```

Remove the default Nginx page.

```bash
sudo rm index.nginx-debian.html
```

Create a new HTML page.

```bash
sudo nano index.html
```

Restart Nginx.

```bash
sudo systemctl restart nginx
```

Open the website.

```
http://98.81.233.79
```

---

# Project Files

```
aws-devops-intern-assignment/
│
├── index.html
└── README.md
```

---

# Screenshots

Add the following screenshots to the repository.

## 1. EC2 Dashboard

```
screenshots/ec2-dashboard.png
```

## 2. SSH Login

```
screenshots/ssh-login.png
```

## 3. Nginx Installation

```
screenshots/nginx-installation.png
```

## 4. Nginx Running

```
screenshots/nginx-status.png
```

## 5. Disk Usage

```
screenshots/disk-usage.png
```

## 6. Memory Usage

```
screenshots/memory-usage.png
```

## 7. Running Processes

```
screenshots/processes.png
```

## 8. Website Hosted on EC2

```
screenshots/website.png
```

---

# Output

The website was successfully hosted on an AWS EC2 instance using Nginx and is accessible through the EC2 Public IP.

---

# Author

**Kalvakota Divakar**

GitHub: https://github.com/YOUR_GITHUB_USERNAME
