# 🚀 AWS Infrastructure Automation with Terraform & GitHub Actions

## 📖 Overview

This project demonstrates **Infrastructure as Code (IaC)** and **CI/CD automation** by provisioning AWS infrastructure using Terraform and GitHub Actions.

The infrastructure is deployed automatically whenever changes are pushed to the repository, ensuring consistent, repeatable, and scalable cloud deployments.

---

## 🎯 Project Objectives

* Automate AWS infrastructure provisioning.
* Implement Infrastructure as Code (IaC) using Terraform.
* Create a CI/CD pipeline using GitHub Actions.
* Manage Terraform state remotely using Amazon S3.
* Reduce manual deployment efforts and configuration drift.
* Follow DevOps best practices for cloud infrastructure management.

---

## 🏗️ Architecture

```text
Developer
    │
    ▼
GitHub Repository
    │
    ▼
GitHub Actions
    │
    ├── Terraform Init
    ├── Terraform Validate
    ├── Terraform Plan
    └── Terraform Apply
    │
    ▼
AWS Infrastructure
    ├── VPC
    ├── Public Subnet
    ├── Security Group
    ├── EC2 Instance
    └── S3 Backend
```

---

## 🛠️ Technology Stack

| Category               | Technology     |
| ---------------------- | -------------- |
| Cloud Platform         | AWS            |
| Infrastructure as Code | Terraform      |
| CI/CD                  | GitHub Actions |
| State Management       | Amazon S3      |
| Networking             | Amazon VPC     |
| Compute                | Amazon EC2     |
| Version Control        | Git & GitHub   |

---

## 📂 Project Structure

```bash
cicdtf/
│
├── .github/
│   └── workflows/
│       └── terraform.yml
│
├── vpc/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
│
├── web/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
│
├── backend.tf
├── provider.tf
├── main.tf
├── variables.tf
├── outputs.tf
└── README.md
```

---

## ⚡ Features

### Infrastructure as Code

* Automated AWS resource provisioning using Terraform.
* Modular architecture for reusable infrastructure components.
* Version-controlled infrastructure management.

### CI/CD Automation

* Automated deployments using GitHub Actions.
* Infrastructure validation before deployment.
* Consistent and repeatable provisioning process.

### Remote State Management

* Terraform state stored in Amazon S3.
* Centralized state management.
* Improved collaboration and state consistency.

### AWS Resources Provisioned

* VPC
* Public Subnet
* Security Group
* EC2 Instance

---

## 🚀 Getting Started

### Prerequisites

* AWS Account
* Terraform Installed
* AWS CLI Configured
* Git

---

### Clone Repository

```bash
git clone https://github.com/thakur45/cicdtf.git
cd cicdtf
```

---

### Configure AWS Credentials

```bash
aws configure
```

Provide:

```text
AWS Access Key ID
AWS Secret Access Key
Region: ap-south-1
```

---

### Initialize Terraform

```bash
terraform init
```

---

### Validate Configuration

```bash
terraform validate
```

---

### Generate Execution Plan

```bash
terraform plan
```

---

### Deploy Infrastructure

```bash
terraform apply
```

---

## 🔄 GitHub Actions Workflow

The pipeline automatically performs:

1. Checkout Source Code
2. Configure Terraform
3. Initialize Backend
4. Validate Terraform Configuration
5. Generate Terraform Plan
6. Deploy Infrastructure to AWS

### Required GitHub Secrets

Add the following repository secrets:

```text
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
AWS_REGION
```

Navigate to:

```text
Repository Settings → Secrets and Variables → Actions
```

---

## 🔐 Security Best Practices

* Store AWS credentials as GitHub Secrets.
* Never commit Terraform state files.
* Use least-privilege IAM permissions.
* Enable versioning on the S3 backend bucket.

---

## 📈 Future Enhancements

* Multi-environment deployment using Terraform Workspaces
* Auto Scaling Groups
* Application Load Balancer
* CloudWatch Monitoring
* Terraform Cloud Integration
* Security Scanning with Checkov or tfsec

---

## 🎓 Skills Demonstrated

* AWS Cloud
* Terraform
* Infrastructure as Code (IaC)
* GitHub Actions
* CI/CD Automation
* Amazon EC2
* Amazon VPC
* Amazon S3
* DevOps Practices
* Cloud Infrastructure Management

---

## 👨‍💻 Author

**Mayuresh Thakur**

Cloud & DevOps Engineer

* GitHub: https://github.com/thakur45
* LinkedIn: https://www.linkedin.com/in/mayuresh-thakur-five/

---

## ⭐ Conclusion

This project showcases the implementation of Infrastructure as Code and CI/CD principles to automate AWS infrastructure deployments. By leveraging Terraform and GitHub Actions, the solution provides a scalable, repeatable, and reliable approach to cloud infrastructure management.
