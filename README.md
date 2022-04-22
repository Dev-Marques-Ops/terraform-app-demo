# Terraform App Demo

## About:

This project deploys a complete single app structure with load balancer, autoscaling group, security groups, SSL certificate and a valid domin name.

## How To Deploy:

This module should be consumed by [Terragrunt App Demo](https://github.com/Dev-Marques-Ops-Live-Infrastructure/terragrunt-app-demo) Project.

## Security:

- **Bastion Host:** Any user can access it since their private key is associated with the instance.
- **Application Hosts:** There isn't incoming access, just can be accessed by SSH from Bastion Host.
- **MySQL Instance:** Restricted access from application hosties IP range.

- **Load Balancer:** Forward incoming traffic according to the domain name and encrypt all traffic by SSL protocol.

## Structure:

<<<<<<< HEAD
![Marques VPC](/var/home/Marques/Downloads/Simple App.png?raw=false "Marques VPC")
=======
![Simple App](https://user-images.githubusercontent.com/5325106/164715583-09cbabc3-f554-401f-8312-f2233fcd52a2.png)
>>>>>>> 2372ba687200745a0e5b1d461367b982e6e4a7fe
