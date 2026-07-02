# Terraform AWS Infrastructure as Code (IaC)

Provision and deploy a Dockerized application on an AWS EC2 instance using **Terraform** and **EC2 User Data**, enabling fully automated infrastructure provisioning and application deployment.

---

## 🏗️ Architecture

<p align="center">
  <img src="architecture/architecture-diagram.png" alt="Architecture Diagram" width="100%">
</p>

---

## 📌 Features

- Infrastructure as Code (IaC) using Terraform
- Automatic EC2 provisioning on AWS
- Automated Docker installation using User Data
- Automatic Docker image pull from Docker Hub
- Automatic container deployment during instance launch
- Security Group configuration for SSH and application access
- One-command infrastructure provisioning (`terraform apply`)
- One-command infrastructure cleanup (`terraform destroy`)

---

## 🛠️ Tech Stack

| Technology | Purpose |
|------------|---------|
| Terraform | Infrastructure as Code |
| AWS EC2 | Compute Service |
| Ubuntu | Operating System |
| Docker | Container Runtime |
| Docker Hub | Container Image Registry |
| EC2 User Data | Automated Instance Configuration |
| Git | Version Control |
| GitHub | Source Code Hosting |

---

## 🚀 Deployment Workflow

### Step 1 — Initialize Terraform

Downloads the required provider plugins.

```bash
terraform init
```

<p align="center">
<img src="screenshots/01-terraform-init.png" width="100%">
</p>

---

### Step 2 — Validate Configuration

Checks the Terraform configuration for syntax errors.

```bash
terraform validate
```

<p align="center">
<img src="screenshots/02-terraform-validate.png" width="100%">
</p>

---

### Step 3 — Review Execution Plan

Displays the infrastructure changes before deployment.

```bash
terraform plan
```

<p align="center">
<img src="screenshots/03-terraform-plan.png" width="100%">
</p>

---

### Step 4 — Terraform Configuration

Infrastructure configuration including:

- AWS Provider
- EC2 Instance
- User Data
- Tags

<p align="center">
<img src="screenshots/04-main-tf-file.png" width="100%">
</p>

---

### Step 5 — Provision AWS Infrastructure

Creates the EC2 instance and automatically executes the User Data script.

```bash
terraform apply
```

<p align="center">
<img src="screenshots/05-terraform-apply.png" width="100%">
</p>

---

### Step 6 — EC2 Instance Created

Terraform successfully provisions the EC2 instance on AWS.

<p align="center">
<img src="screenshots/06-ec2-instance-created.png" width="100%">
</p>

---

### Step 7 — Docker Container Running

The User Data script automatically:

- Installs Docker
- Pulls the Docker image
- Runs the container

<p align="center">
<img src="screenshots/07-docker-container-running.png" width="100%">
</p>

---

### Step 8 — Security Group Configuration

Inbound rules configured for:

- SSH (22)
- Application Port (8000)

<p align="center">
<img src="screenshots/08-security-group.png" width="100%">
</p>

---

### Step 9 — Application Running

Application successfully deployed and accessible using the EC2 Public IP.

```
http://<EC2-Public-IP>:8000/todo
```

<p align="center">
<img src="screenshots/09-application-running.png" width="100%">
</p>

---

### Step 10 — Destroy Infrastructure

Removes all AWS resources managed by Terraform.

```bash
terraform destroy
```

<p align="center">
<img src="screenshots/10-terraform-destroy.png" width="100%">
</p>

---

## ▶️ How to Run

Clone the repository.

```bash
git clone https://github.com/Shivam-Malik-Dev/terraform-aws-iac.git
```

Move to the project directory.

```bash
cd terraform-aws-iac/terraform
```

Initialize Terraform.

```bash
terraform init
```

Validate the configuration.

```bash
terraform validate
```

Review the execution plan.

```bash
terraform plan
```

Provision the infrastructure.

```bash
terraform apply
```

After deployment, open:

```
http://<EC2-Public-IP>:8000/todo
```

To remove all created resources:

```bash
terraform destroy
```

---

## 📖 Terraform Commands

| Command | Description |
|----------|-------------|
| `terraform init` | Initialize Terraform |
| `terraform validate` | Validate Terraform configuration |
| `terraform plan` | Preview infrastructure changes |
| `terraform apply` | Provision AWS infrastructure |
| `terraform destroy` | Destroy all managed resources |

---

## 📈 Future Improvements

- Create a custom VPC using Terraform
- Create Security Groups using Terraform
- Use Variables (`variables.tf`)
- Use Outputs (`outputs.tf`)
- Modularize the Terraform configuration
- Use Remote Backend (S3)
- Enable State Locking using DynamoDB
- Provision IAM Roles using Terraform
- Deploy behind an Application Load Balancer
- Configure Auto Scaling Group
- Integrate CI/CD using GitHub Actions

---

## 👨‍💻 Author

**Shivam Malik**

GitHub: https://github.com/Shivam-Malik-Dev

LinkedIn: https://www.linkedin.com/in/shivam-malik-59b13a29b/