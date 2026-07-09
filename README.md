
## Objective

Deploy a simple website on an AWS EC2 Ubuntu instance using Nginx and document the complete deployment process.

---

# AWS Services Used

- Amazon EC2
- Security Group
- Ubuntu Server 24.04 LTS
- Nginx

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
4. Configured the following inbound rules:
   - SSH (Port 22) – My IP
   - HTTP (Port 80) – Anywhere (0.0.0.0/0)
5. Connected to the EC2 instance using SSH.

---

# SSH Connection

SSH Command:

```bash
ssh -i <YOUR-KEY>.pem ubuntu@<PUBLIC-IP>
```

---

# Linux Commands Used

## Update Package List

```bash
sudo apt update
```

## Upgrade Installed Packages

```bash
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

### Step 1: Navigate to the Nginx Web Directory

Move to the directory where Nginx serves website files.

```bash
cd /var/www/html
```

### Step 2: Remove the Default Nginx Page

Delete the default Nginx welcome page.

```bash
sudo rm index.nginx-debian.html
```

### Step 3: Create a New HTML Page

Create a new HTML file.

```bash
sudo nano index.html
```

### Step 4: Restart Nginx

Restart the Nginx service.

```bash
sudo systemctl restart nginx
```

### Step 5: Verify the Website

Open the EC2 Public IP in a web browser.

```
http://<PUBLIC-IP>
```

The custom HTML page is displayed successfully.

---

# Screenshots Included

- EC2 Instance Running
- Successful SSH Login
- Nginx Installation
- Nginx Running Status
- Linux Commands (`df -h`, `free -h`, `ps aux`)
- Website Hosted on EC2

---

# Output

Successfully deployed a simple HTML website on an AWS EC2 Ubuntu instance using Nginx. The website is accessible using the EC2 Public IP address.

---

# Author

**Kalvakota Divakar**

