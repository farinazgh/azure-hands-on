| Service             | Azure                            | AWS                           | Similarities                                                                 | Differences                                                                                          | Unique Features                                                                                      |
|---------------------|----------------------------------|-------------------------------|-----------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------|
| Compute             | **Azure VM**                     | **AWS EC2**                   | Scalable VMs, multiple OS support, instance types, auto-scaling, load balancing | Pricing models, management tools, marketplace variations                                            | Azure VM: Azure Site Recovery, Azure Bastion, Azure DevTest Labs                                      |
|                     |                                  |                               |                                                                             |                                                                                                     | AWS EC2: AMI customization, Dedicated Hosts, integration with Lambda and ECS                           |
| Network             | **Azure Virtual Network**        | **AWS VPC**                   | Isolated networks, subnets, route tables, network gateways, secure communication | Management, regional differences                                                                    | Azure Virtual Network: Virtual Network NAT, Virtual WAN, Azure Firewall integration                    |
|                     |                                  |                               |                                                                             |                                                                                                     | AWS VPC: VPC Flow Logs, Traffic Mirroring, VPC Endpoints                                               |
| Internet Access     | **Azure Public IP**              | **AWS IGW (Internet Gateway)**| Public IPs for internet connectivity, IPv4 and IPv6 support                 | Assignment, management                                                                              | Azure Public IP: SKU options, zonal or zone-redundant IPs                                              |
|                     |                                  |                               |                                                                             |                                                                                                     | AWS IGW: Enables VPC internet communication, dual-stack addressing, associated with route tables        |
| Storage             | **Azure Disk**                   | **AWS Volume**                | Persistent block storage, various disk types, resizing, snapshots           | Disk types, performance specifications                                                              | Azure Disk: Azure Disk Encryption, shared disks, Disk Storage Burst                                     |
|                     |                                  |                               |                                                                             |                                                                                                     | AWS Volume: Elastic Volumes, EBS-optimized instances                                                    |
| Security            | **Azure NSG (Network Security Group)** | **AWS SG (Security Group)**  | Virtual firewalls, traffic control, IP/port/protocol rules                  | Statefulness, rule management                                                                       | Azure NSG: Application Security Groups, Azure Policy integration                                       |
|                     |                                  |                               |                                                                             |                                                                                                     | AWS SG: Default security group simplifies initial setup                                                |
| Network Interface   | **Azure NIC**                    | **AWS ENI (Elastic Network Interface)** | Network interfaces for VMs, multiple NICs per VM, attachment/detachment   | Management, scaling limits                                                                          | Azure NIC: Accelerated networking, secondary IP configurations, Load Balancer integration              |
|                     |                                  |                               |                                                                             |                                                                                                     | AWS ENI: Detailed network configuration, secondary private IPs, source/destination checks               |

### Azure VM vs. AWS EC2

#### Similarities:

* Both are virtual machines (VMs) that provide scalable computing capacity.
* They support multiple OS types, including Windows and various distributions of Linux.
* Offer various instance types to suit different workloads (general purpose, compute-optimized, memory-optimized, etc.).
* Support for auto-scaling and load balancing.
* Integration with storage services, security groups, and monitoring tools.
#### Differences:

* Pricing Models: AWS EC2 offers On-Demand, Reserved Instances, Spot Instances, and Savings Plans. Azure VM has Pay-as-You-Go, Reserved Instances, Spot VMs, and Azure Hybrid Benefit.
* Management Tools: AWS uses EC2 Auto Scaling and AWS Systems Manager, while Azure uses Virtual Machine Scale Sets and Azure Automation.
* Marketplaces: Both have extensive marketplaces, but the types and varieties of third-party images and solutions might differ.

#### Unique Features:

* AWS EC2: Amazon Machine Image (AMI) customization, EC2 Dedicated Hosts, and integration with other AWS services like Lambda and ECS.
* Azure VM: Integration with Azure Site Recovery for disaster recovery, Azure Bastion for secure RDP/SSH access, and Azure DevTest Labs for development and testing environments.

### Azure Virtual Network vs. AWS VPC
#### Similarities:

* Both provide isolated networks to host your resources.
* Support for subnets, route tables, and network gateways.
* Enable secure communication between resources within the network.
* Allow connection to on-premises networks via VPN or dedicated connections.
#### Differences:

* Management: AWS VPC uses AWS Management Console and AWS CLI for management, while Azure Virtual Network uses the Azure Portal and Azure CLI.
* Regional Differences: AWS VPCs are region-specific, while Azure Virtual Networks can span multiple regions using Azure Virtual Network Peering.

#### Unique Features:

* AWS VPC: VPC Flow Logs for monitoring and troubleshooting, VPC Traffic Mirroring, and VPC Endpoints for private connectivity to AWS services.
* Azure Virtual Network: Virtual Network NAT for outbound Internet connectivity, Virtual WAN for global network connectivity, and integration with Azure Firewall.
* 
### Azure Public IP vs. AWS IGW (Internet Gateway)
#### Similarities:

* Both provide public IP addresses to resources for internet connectivity.
* Support for IPv4 and IPv6 addresses.
* Can be assigned to various resources like VMs, load balancers, etc.
#### Differences:

* Assignment: Azure Public IP can be static or dynamic, while AWS IGW is used to enable internet access for VPC resources but does not directly assign IPs.
* Management: AWS IGW is managed as part of the VPC network architecture, while Azure Public IP is managed as an individual resource.
#### Unique Features:

* AWS IGW: Enables VPC communication with the internet, allows for dual-stack (IPv4 and IPv6) addressing, and is associated with route tables for outbound internet traffic.
* Azure Public IP: SKU options (Basic and Standard) for different performance and SLA requirements, and it can be zonal or zone-redundant.
### Azure Disk vs. AWS Volume
#### Similarities:

* Both provide persistent block storage for VMs.
* Support different types of disks for different performance needs (e.g., SSDs, HDDs).
* Allow resizing and snapshotting of disks.
* Integrated with VM backup and recovery solutions.
#### Differences::

* Disk Types: AWS has EBS with GP2, GP3, IO1, IO2, ST1, and SC1 types, while Azure offers Standard HDD, Standard SSD, Premium SSD, and Ultra Disk.
* Performance: AWS EBS volumes have specific IOPS and throughput limits depending on type, while Azure disks provide consistent performance guarantees with adjustable IOPS and throughput on Premium and Ultra Disks.
#### Unique Features:

* AWS Volume: Elastic Volumes for dynamically modifying volume type and size without downtime, EBS-optimized instances for dedicated throughput.
* Azure Disk: Azure Disk Encryption for enhanced security, shared disks for clustering and high-availability applications, and Disk Storage Burst capability for handling sudden traffic spikes.
### Azure NSG (Network Security Group) vs. AWS SG (Security Group)
#### Similarities:

* Both act as virtual firewalls to control inbound and outbound traffic to resources.
* Support for allowing and denying traffic based on IP addresses, ports, and protocols.
* Can be associated with VMs and other networked resources.
#### Differences:

* Statefulness: Both AWS SG and Azure NSG are stateful, but AWS SG only allows stateful rules, while Azure NSG can have both stateful and stateless rules.
* Rule Management: AWS SG rules are managed through the Security Groups settings in the VPC, while Azure NSG rules are managed within the Network Security Group resource.
#### Unique Features:

* AWS SG: Simplified default security group with no traffic allowed until explicitly permitted.
* Azure NSG: Application Security Groups to simplify management of rules for multiple VMs, integration with Azure Policy for governance.
### Azure NIC vs. AWS ENI (Elastic Network Interface)
#### Similarities:

* Both represent network interfaces attached to VMs.
* Allow multiple NICs per VM for traffic segregation and network management.
* Support attachment and detachment from VMs without downtime.
#### Differences::

* Management: AWS ENI can be managed as a part of the VPC resources and has more detailed control over network attributes. Azure NIC is managed as part of the VM configuration in Azure.
* Scaling: AWS ENI has specific limits on the number of interfaces per instance type, whereas Azure NIC limits vary by VM size.
#### Unique Features:

* AWS ENI: Allows for detailed network configuration, including secondary private IPs, security groups, and source/destination checks.
* Azure NIC: Supports accelerated networking for reduced latency and increased throughput, secondary IP configurations, and direct integration with Azure Load Balancer.