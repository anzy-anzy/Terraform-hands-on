# 🚀 Terraform Hands-On: AWS VPC & EC2 Deployment
###  📖 Overview
This hands-on demonstrates how to use Terraform to:
- Launch a custom VPC (10.0.0.0/16) in the us-west-2 region.
- 	Deploy an Amazon Linux 2 EC2 instance in the default VPC of `us-west-2` .
# The configuration is split into multiple files for clarity and best practices:
- `Provider.tf` → AWS provider configuration
- `Variables.tf`→ Input variables (AMI, instance type, CIDR, etc.)
- `main.tf`	 → Resource definitions (VPC, subnet, EC2 instance)
- `Output.tf`	 → Outputs (VPC ID, EC2 public IP)
 
 ### 🔧 Prerequisites

- Before running this project, ensure you have:

✔ Terraform Installed

Check version: 
```bash
aws --version
```
---

✔ AWS Credentials Configured
```bash
aws configure
```
---
You must provide:

AWS Access Key

Secret Key

Default region

## steps
### Prepare your working directory
```bash
terraform-aws-hands-on/
├── main.tf
├── outputs.tf
├── provider.tf
├── variables.tf
└── README.md
```
----
### Deploy the files
### 1) Initialize Terraform
```bash
terraform init
```
--- 

This downloads the AWS provider and prepares the working directory.

<img width="1920" height="943" alt="Screenshot (1114)" src="https://github.com/user-attachments/assets/4c194ccc-40e9-4abe-88f3-cbc2a6530329" />

### 2) Validate Syntax
```bash
terraform validate
```
---

Confirms your Terraform configuration is valid.

<img width="1920" height="954" alt="Screenshot (1115)" src="https://github.com/user-attachments/assets/0f39ee68-8665-4823-9a16-7259fc4165e0" />

### 2) Preview the infrastructure
```bash
terraform plan
```
---

Shows all resources that will be created.

<img width="1920" height="954" alt="Screenshot (1116)" src="https://github.com/user-attachments/assets/7961a036-c6c7-44eb-a172-94bbb3b077e4" />
<img width="1920" height="962" alt="Screenshot (1117)" src="https://github.com/user-attachments/assets/ea42720f-1dac-4ba0-86cc-ce77ef83cc13" />

### 3) Apply (Deploy resources)
```
terraform apply
```
---
This will prompt you to type yes and then terraform will proceed to create the resources.
<img width="1920" height="922" alt="Screenshot (1118)" src="https://github.com/user-attachments/assets/55a54d6f-7108-4f83-b226-f481530be051" />

- VPC was created and ec2 had an issue so did some troubleshoting
 
  <img width="1920" height="960" alt="Screenshot (1121)" src="https://github.com/user-attachments/assets/08d6c701-35a6-4d41-9f65-35908c1e45f2" />

### Resources created:
<img width="1920" height="911" alt="Screenshot (1123)" src="https://github.com/user-attachments/assets/309b84b6-8836-46a5-b842-dbcc91abcf01" />

<img width="1920" height="887" alt="Screenshot (1124)" src="https://github.com/user-attachments/assets/a9fe2b5b-9bd5-4b7a-bc38-491e89165fb5" />

### To see outputs
```bash
terraform output
```
---
<img width="1920" height="922" alt="Screenshot (1125)" src="https://github.com/user-attachments/assets/8a2cb80d-3eaa-416a-923f-ac11e3792ea2" />

### Clean-up
```bash
terraform destroy
```
---
This will clean all resources created at once

<img width="1920" height="954" alt="Screenshot (1127)" src="https://github.com/user-attachments/assets/18568020-9eb9-45c4-9064-8e4c0a2870f4" />

<img width="1920" height="954" alt="Screenshot (1126)" src="https://github.com/user-attachments/assets/9dceb14c-8779-458e-9054-996d39e23fbe" />

## Conclusion

This hands-on project successfully demonstrated how to provision foundational AWS infrastructure using Terraform in a clean, modular, and production-ready way. By structuring the configuration into separate files (main.tf, variables.tf, provider.tf, and output.tf), the deployment was easy to understand, reusable, and aligned with real-world Infrastructure-as-Code best practices.

We launched a fully functional VPC using the CIDR block 10.0.0.0/16 in us-west-2, and deployed an Amazon Linux 2 EC2 instance inside the default VPC using Terraform’s declarative workflow. We also implemented parameterization through variables, used AWS SSM instead of SSH for secure access, and validated all resources through the AWS Console.

This exercise provided practical experience with:

Writing Terraform resource blocks

Managing variables and outputs

Running the Terraform workflow (init, plan, apply, destroy)

Provisioning AWS networking components

Launching compute resources in a controlled, repeatable way

Overall, this hands-on lab reinforced the core concepts of infrastructure automation and highlighted the power of Terraform as a tool for managing cloud resources efficiently and predictably.
