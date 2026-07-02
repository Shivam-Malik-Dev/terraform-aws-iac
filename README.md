# 🏗️ Terraform AWS Infrastructure as Code (IaC)

Provision and deploy a Dockerized application on an AWS EC2 instance using **Terraform** and **EC2 User Data**, enabling fully automated infrastructure provisioning and application deployment.

<p align="center">

![Terraform](https://img.shields.io/badge/Terraform-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-232F3E?style=for-the-badge&logo=amazonaws&logoColor=white)
![EC2](https://img.shields.io/badge/EC2-FF9900?style=for-the-badge&logo=amazonaws&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Docker Hub](https://img.shields.io/badge/DockerHub-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Ubuntu](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)
![HCL](https://img.shields.io/badge/HCL-844FBA?style=for-the-badge)

</p>

---

# 🏗️ Architecture

<p align="center">
<img src="architecture/terraform-architecture.png" width="900">
</p>

---

# 📌 Project Overview

This project demonstrates how to provision cloud infrastructure using **Terraform** and automatically deploy a Dockerized To-Do application on an **AWS EC2** instance.

Instead of manually creating an EC2 instance, installing Docker, pulling the Docker image, and running the container, the complete process is automated using **Infrastructure as Code (IaC)**.

Terraform provisions the infrastructure, while **EC2 User Data** executes the deployment script during instance launch, making the application available immediately after provisioning.

---

# ✨ Features

- Infrastructure as Code (IaC) using Terraform
- Automatic EC2 provisioning
- EC2 User Data automation
- Automatic Docker installation
- Pull Docker image from Docker Hub
- Automatic container deployment
- AWS Security Group configuration
- Browser-accessible application
- One-command infrastructure creation
- One-command infrastructure cleanup

---

# 🚀 Deployment Workflow

## Step 1 — Initialize Terraform

```bash
terraform init
```

<p align="center">
<img src="docs/screenshots/01-terraform-init.png">
</p>

**Result:** Terraform downloads and initializes the required AWS provider plugins.

---

## Step 2 — Validate Terraform Configuration

```bash
terraform validate
```

<p align="center">
<img src="docs/screenshots/02-terraform-validate.png">
</p>

**Result:** Configuration successfully validated.

---

## Step 3 — Review Execution Plan

```bash
terraform plan
```

<p align="center">
<img src="docs/screenshots/03-terraform-plan.png">
</p>

**Result:** Terraform displays the execution plan before creating resources.

---

## Step 4 — Terraform Configuration

<p align="center">
<img src="docs/screenshots/04-main-tf-file.png">
</p>

**Description:** Main Terraform configuration containing AWS provider, EC2 resource and User Data script.

---

## Step 5 — Create Infrastructure

```bash
terraform apply
```

<p align="center">
<img src="docs/screenshots/05-terraform-apply.png">
</p>

**Result:** AWS EC2 instance created successfully.

---

## Step 6 — EC2 Instance Created

<p align="center">
<img src="docs/screenshots/06-ec2-instance-created.png">
</p>

**Result:** Terraform provisions the EC2 instance successfully.

---

## Step 7 — Docker Container Running

<p align="center">
<img src="docs/screenshots/07-docker-container-running.png">
</p>

**Result:** Docker image pulled automatically and container started successfully.

---

## Step 8 — Security Group Configuration

<p align="center">
<img src="docs/screenshots/08-security-group.png">
</p>

**Result:** SSH (22) and Application Port (8000) configured for inbound access.

---

## Step 9 — Application Successfully Running

<p align="center">
<img src="docs/screenshots/09-application-running.png">
</p>

**Result:** Dockerized To-Do application accessible through the EC2 Public IP.

---

## Step 10 — Destroy Infrastructure

```bash
terraform destroy
```

<p align="center">
<img src="docs/screenshots/10-terraform-destroy.png">
</p>

**Result:** All AWS resources removed successfully with a single command.

---

# ⚙️ Terraform Commands

```bash
terraform init
terraform validate
terraform plan
terraform apply
terraform destroy
```

---

# 📂 Technologies Used

- Terraform
- AWS EC2
- EC2 User Data
- Docker
- Docker Hub
- Ubuntu
- HCL

---

# 🎯 Learning Outcomes

Through this project I learned how to:

- Write Infrastructure as Code using Terraform
- Configure the AWS Provider
- Provision EC2 instances automatically
- Automate software installation using EC2 User Data
- Pull Docker images from Docker Hub
- Deploy Docker containers automatically
- Configure Security Groups
- Validate and review Terraform execution plans
- Create and destroy infrastructure with Terraform
- Build fully automated cloud deployments

---

# 👨‍💻 Author

**Shivam Malik**

GitHub: https://github.com/Shivam-Malik-Dev

LinkedIn: https://www.linkedin.com/in/shivammalikdev/

---

## ⭐ If you found this project useful, consider giving it a Star.