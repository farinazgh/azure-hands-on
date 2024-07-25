###### Azure Container Instances (ACI)

ACI is a simpler, serverless way to run containers without managing VM infrastructure. However, it doesn't support orchestration and scaling to the same degree as ECS.

###### Azure Kubernetes Service (AKS)
While it's not as simple as ECS, AKS is Azure's managed Kubernetes service and is the preferred way to run and manage containerized applications in Azure. It provides robust orchestration capabilities, including auto-scaling.

Azure doesn't have a direct equivalent to AWS ECS that provides the same level of native orchestration and scaling. Instead, it leverages Kubernetes for container orchestration and scaling through AKS.

###### Org, account and services

| AWS                     | Azure                      |
|-------------------------|----------------------------|
| AWS Organizations       | Azure Management Groups    |
| AWS Accounts            | Azure Subscriptions        |
| Services (EC2, S3, etc.)| Services (VMs, Blob Storage, etc.) |
|                         | Resource Groups            |

###### Containers and repositories

| **AWS Service**                       | **Azure Service**                        | **Description**                                        |
|---------------------------------------|------------------------------------------|--------------------------------------------------------|
| AWS Elastic Container Service (ECS)   | Azure Container Instances (ACI)          | Service for running containerized applications         |
| Amazon Elastic Container Registry (ECR) | Azure Container Registry (ACR)            | Managed Docker container registry service              |
| Amazon EC2 Auto Scaling               | Azure Virtual Machine Scale Sets         | Automatically scales the number of virtual machine instances  |
| AWS Identity and Access Management (IAM) | Azure Active Directory (Azure AD)       | Service for managing users and access to resources     |
| AWS CloudShell                        | Azure Cloud Shell                        | Web-based shell for managing cloud resources           |
| AWS Security Groups                   | Azure Network Security Groups (NSG)      | Firewall rules to control inbound and outbound traffic |

