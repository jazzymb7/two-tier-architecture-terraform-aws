# Terraform based Two-Tier AWS Setup

## Project Description 
This project focuses on building a highly available and reliable web application infrastructure using a two-tier architecture on Amazon Web Services (AWS). The setup includes a web tier for handling user requests and a database tier for securely storing data. I used Terraform, an Infrastructure as Code (IaC) tool, to automate the provisioning and management of AWS resources, ensuring the deployment process is efficient and repeatable.

## Architectural Diagram 

![architectural-diagram] ![twotierarch](https://github.com/user-attachments/assets/7cc615ea-f285-4128-9d46-751d351cda70)



## Key Features

- **Infrastructure as Code (IaC):** Used Terraform to define and deploy the entire infrastructure, ensuring consistency, scalability, and easy management.
- **High Availability:** Designed for high availability by distributing resources across multiple Availability Zones (AZs), reducing the risk of downtime during failures.
- **Security:** Applied best practices such as security groups, network ACLs, and encryption to safeguard both data and AWS resources.
- **Database:** Leveraged Amazon RDS as a managed database service, ensuring reliability, automatic backups, and data durability.
- **Load Balancing:** Integrated Elastic Load Balancers (ELBs) to evenly distribute traffic across web servers, improving performance and maximizing resource efficiency.
