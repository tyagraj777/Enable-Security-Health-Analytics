# Security Health Analytics and SIEM Integration

## Overview
This project sets up Security Health Analytics (SHA) in Google Security Command Center (GSC) and integrates critical security findings with a Security Information and Event Management (SIEM) system. 

## Features
- Enables Security Health Analytics at the organization level.
- Creates a Pub/Sub topic to receive critical security findings.
- Integrates with a SIEM system for centralized log management.

---

## Prerequisites
1. **Google Cloud Project**  
   Ensure you have a GCP project and organization set up.
2. **Terraform Installed**  
   Install Terraform from [Terraform.io](https://www.terraform.io/downloads).
3. **SIEM System**  
   Ensure your SIEM supports Pub/Sub or REST API integration.

---

## Setup

### 1. Clone the Repository
```bash
git clone <repository-url>
cd security-health-analytics

Step-by-Step Instructions
Install Terraform

Ensure Terraform is installed on your system. You can download it from the Terraform website.
Initialize Terraform Navigate to the project directory and run:

bash
Copy code
terraform init
Review and Apply Changes Review the planned changes:

bash
Copy code
terraform plan
Apply the changes:

bash
Copy code
terraform apply
Validate the Setup

Verify that Security Health Analytics is enabled by checking the Security Command Center.
Confirm the Pub/Sub topic is created in the Google Cloud Console.
Check that the notification channel is configured and filters are applied correctly.

