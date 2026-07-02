# Project Workflow

This document explains the complete deployment workflow of the **Terraform AWS Infrastructure as Code (IaC)** project.

---

# Step 1: Initialize Terraform

Initialize the Terraform working directory and download the required AWS provider plugins.

```bash
terraform init
```

---

# Step 2: Validate Configuration

Validate the Terraform configuration to ensure there are no syntax errors.

```bash
terraform validate
```

---

# Step 3: Generate Execution Plan

Preview the infrastructure changes before creating AWS resources.

```bash
terraform plan
```

---

# Step 4: Provision AWS Infrastructure

Create the AWS EC2 instance using Terraform.

```bash
terraform apply
```

Terraform automatically provisions:

- Ubuntu EC2 Instance
- t3.micro Instance
- Security Group
- User Data Script
- Resource Tags

---

# Step 5: Execute User Data

After the EC2 instance is launched, AWS automatically executes the User Data script.

The script performs the following tasks:

- Updates the package list
- Installs Docker
- Pulls the Docker image from Docker Hub
- Runs the Docker container

No manual server configuration is required.

---

# Step 6: Verify Docker Container

Connect to the EC2 instance and verify that the container is running.

```bash
sudo docker ps
```

The running container confirms that the application has been deployed successfully.

---

# Step 7: Access the Application

Open the deployed application in your browser.

```
http://<EC2-Public-IP>:8000/todo
```

If the Security Group allows port **8000**, the application will be accessible.

---

# Step 8: Destroy Infrastructure

Delete all AWS resources managed by Terraform.

```bash
terraform destroy
```

Terraform removes the EC2 instance and associated resources while keeping the Terraform configuration files unchanged.

---

# Workflow Summary

```
Terraform Init
        │
        ▼
Terraform Validate
        │
        ▼
Terraform Plan
        │
        ▼
Terraform Apply
        │
        ▼
Launch EC2 Instance
        │
        ▼
Execute User Data
        │
        ▼
Install Docker
        │
        ▼
Pull Docker Image
        │
        ▼
Run Docker Container
        │
        ▼
Access Application
        │
        ▼
Terraform Destroy
```