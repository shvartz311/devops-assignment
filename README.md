# Project Overview

This project involves deploying a backend environment for an online orders system on AWS using Terraform. It includes the setup of an EKS cluster, DocumentDB for database needs, ECR for Docker image storage, and essential networking infrastructure within a VPC.

## Repository Structure

```
/devops-assignment
│
├── eks.tf          # Terraform configuration for EKS cluster setup
├── documentdb.tf   # Configuration for DocumentDB instances
├── ecr.tf          # ECR setup for Docker image storage
├── vpc.tf          # VPC and networking setup
├── provider.tf     # AWS provider configuration
└── README.md       # Project documentation and setup instructions
```

## Prerequisites

- **Terraform:** v0.12.x or later
- **AWS CLI:** Configured with administrator privileges
- **kubectl:** Configured to interact with Kubernetes
- **Docker:** For managing Docker containers

## Deployment Instructions

1. **Initialize Terraform:**
   ```bash
   terraform init
   ```
2. **Plan the Deployment:**
   ```bash
   terraform plan
   ```
3. **Apply the Configuration:**
   ```bash
   terraform apply
   ```

4. **Verify Deployment:**
   - Check the AWS Console to confirm that all resources are created successfully.
   - Use `kubectl` to verify the Kubernetes cluster functionality.

## Docker Build Process

The Docker build process involves creating a Docker image that contains the Node.js application, ready to be deployed in any environment that supports Docker containers.

### Dockerfile Configuration

The `Dockerfile` is configured to:

- Use the official Node.js LTS (Long-Term Support) image as a base.
- Install necessary packages and dependencies outlined in `package.json`.
- Set the `MONGODB_URL` environment variable to connect to Amazon DocumentDB.
- Expose port 3000 for communication with the Node.js application.

```Dockerfile
FROM node:lts
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
ENV MONGODB_URL="mongodb://username:password@docdb-endpoint:27017/dbname"
EXPOSE 3000
CMD ["node", "index.js"]

## Conclusion

This README provides a complete guide to setting up an AWS backend for an online orders system using Terraform. Adjust the configurations as necessary based on specific project needs or updates.