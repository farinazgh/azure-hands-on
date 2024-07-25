| AWS IAM Concept       | Azure Equivalent                                | Description                                                    |
|-----------------------|--------------------------------------------------|----------------------------------------------------------------|
| IAM User              | Azure AD User                                    | User account for accessing cloud resources.                    |
| IAM Group             | Azure AD Group                                   | Group for managing user permissions.                           |
| IAM Role              | Azure AD Role           | Identity for applications/services to access resources.        |
| IAM Policy            | Azure Role-Based Access Control (RBAC)           | JSON document defining permissions for actions on resources.   |
| Assume Role           | Role Assignment to User/Group/Managed Identity   | Assigning roles directly to entities for specific permissions. |
| Trust Relationship    | Service Principal and Role Assignment            | Granting permissions to applications/services.                 |
| Application Identity  | IAM Role (for Service Accounts)                  | Identity for applications to interact with resources.          |
| Service Identity      | IAM Role (for EC2 Instances, ECS, Lambda, etc.)  | Identity for services to access other resources securely.      |

A Service Principal in Azure is an identity created for use with applications, hosted services, and automated tools to access Azure resources. It works alongside managed identities and Azure AD applications to facilitate secure access and authentication.