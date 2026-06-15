# 🚀 AWS Infrastructure Automation with Terraform & GitHub Actions

## 📖 Overview

This project demonstrates Infrastructure as Code (IaC) and CI/CD automation by provisioning and managing AWS infrastructure using Terraform and GitHub Actions.

The solution automates the complete infrastructure lifecycle, including:

* Infrastructure Provisioning
* Infrastructure Updates
* Infrastructure Destruction
* Remote State Management
* Environment-Based Approval Workflows

By leveraging Terraform and GitHub Actions, infrastructure deployments become consistent, repeatable, and fully version-controlled.

---

## 🎯 Project Objectives

* Automate AWS infrastructure provisioning.
* Implement Infrastructure as Code (IaC) using Terraform.
* Build CI/CD pipelines using GitHub Actions.
* Securely manage Terraform state using Amazon S3.
* Reduce manual deployment efforts.
* Demonstrate complete infrastructure lifecycle management.
* Implement approval-based infrastructure destruction.

---

## 🏗️ Solution Architecture

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
    ├── Terraform Apply
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
* Modular architecture for reusable components.
* Version-controlled infrastructure management.

### CI/CD Automation

* Automated deployment using GitHub Actions.
* Infrastructure validation before deployment.
* Repeatable and consistent provisioning process.

### Remote State Management

* Terraform state stored securely in Amazon S3.
* Centralized state management.
* Improved collaboration and state consistency.

### Infrastructure Lifecycle Management

* Automatic infrastructure creation.
* Infrastructure updates through Git commits.
* Manual infrastructure destruction with approval gates.

---

## 🚀 Deployment Workflow

Infrastructure deployment is triggered automatically when code is pushed to the `main` branch.

### Workflow Process

```text
Git Push
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
AWS Infrastructure Provisioned
```

### Workflow Steps

1. Checkout repository code
2. Install Terraform
3. Configure AWS credentials
4. Initialize Terraform backend
5. Validate Terraform configuration
6. Generate execution plan
7. Apply infrastructure changes

### Deployment Commands

```bash
terraform init
terraform validate
terraform plan -out=planfile
terraform apply planfile
```

---

## 🗑️ Destroy Workflow

The project includes a dedicated Terraform Destroy pipeline for safely removing AWS resources.

Unlike deployments, destroy operations are not executed automatically and require manual approval.

### Destroy Process

```text
Manual Workflow Trigger
        │
        ▼
GitHub Actions
        │
        ▼
Destroy Approval Environment
        │
        ▼
Terraform Init
        │
        ▼
Terraform Destroy
        │
        ▼
AWS Resources Deleted
```

### Workflow Logic

The destroy job executes only when the workflow is manually triggered:

```yaml
if: github.event_name == 'workflow_dispatch'
```

Terraform executes:

```bash
terraform init
terraform destroy -auto-approve
```

### Resources Removed

Terraform removes all resources managed by the state file, including:

* VPC
* Public Subnets
* Security Groups
* EC2 Instances
* Other Terraform-managed AWS resources

---

## 🔐 Approval-Based Destruction

To prevent accidental infrastructure deletion, the destroy workflow uses a dedicated GitHub Environment:

```yaml
environment: destroy-approval
```

This environment can be configured with required reviewers, ensuring that infrastructure destruction must be explicitly approved before execution.

### Benefits

* Prevents accidental deletions
* Implements change management controls
* Adds governance to production environments
* Aligns with DevOps best practices

---

## 🔄 GitHub Actions Workflow Summary

### Automatic Deployment

Triggered On:

```yaml
push:
  branches:
    - main
```

Actions Performed:

* Terraform Init
* Terraform Validate
* Terraform Plan
* Terraform Apply

---

### Manual Destruction

Triggered On:

```yaml
workflow_dispatch:
```

Actions Performed:

* Terraform Init
* Terraform Destroy

---

## 🔧 Getting Started

### Prerequisites

* AWS Account
* Terraform Installed
* AWS CLI Configured
* Git
* GitHub Account

### Clone Repository

```bash
git clone https://github.com/thakur45/cicdtf.git
cd cicdtf
```

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

### Initialize Terraform

```bash
terraform init
```

### Validate Configuration

```bash
terraform validate
```

### Review Deployment Plan

```bash
terraform plan
```

### Deploy Infrastructure

```bash
terraform apply
```

---

## 🔑 Required GitHub Secrets

Store the following secrets within GitHub Actions:

```text
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
AWS_REGION
```

Navigate to:

```text
Repository Settings
  → Secrets and Variables
  → Actions
```

---

## 🔐 Security Best Practices

* Store AWS credentials as GitHub Secrets.
* Never commit Terraform state files.
* Enable S3 versioning for state management.
* Use least-privilege IAM permissions.
* Require approval for destructive operations.

---

## 📈 Future Enhancements

* Terraform Workspaces for multiple environments
* Auto Scaling Groups
* Application Load Balancers
* CloudWatch Monitoring
* Terraform Cloud Integration
* Security Scanning with tfsec or Checkov
* Slack Notifications for Deployments

---

## 🎓 Skills Demonstrated

* AWS Cloud
* Terraform
* Infrastructure as Code (IaC)
* GitHub Actions
* CI/CD Automation
* Infrastructure Lifecycle Management
* Amazon EC2
* Amazon VPC
* Amazon S3
* Cloud Security
* DevOps Practices
* Change Management Controls

---

## 👨‍💻 Author

**Mayuresh Thakur**

Cloud & DevOps Engineer

GitHub: https://github.com/thakur45

LinkedIn: https://www.linkedin.com/in/mayuresh-thakur-five/

---

## ⭐ Conclusion

This project demonstrates a production-oriented Infrastructure as Code workflow using Terraform and GitHub Actions. It automates infrastructure provisioning, updates, and destruction while incorporating approval gates for high-risk operations. The implementation highlights practical DevOps concepts such as CI/CD, cloud automation, infrastructure lifecycle management, and secure change control processes.
