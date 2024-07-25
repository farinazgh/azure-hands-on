| AWS S3 Storage Class              | Azure Blob Storage Access Tier     | Description                                                                                   |
|-----------------------------------|------------------------------------|-----------------------------------------------------------------------------------------------|
| Standard                          | Hot                                | General-purpose storage for frequently accessed data.                                         |
| Intelligent-Tiering               | N/A                                | Automatically moves data between two access tiers when access patterns change.                |
| Standard-IA (Infrequent Access)   | Cool                               | Lower-cost storage for infrequently accessed data.                                            |
| One Zone-IA (One Zone Infrequent Access) | Cool                               | Lower-cost storage for infrequently accessed data, stored redundantly within a single AZ.      |
| Glacier                           | Archive                            | Lowest-cost storage designed for long-term backup and archival, with retrieval times in hours. |
| Glacier Deep Archive              | Archive                            | Lower-cost storage for long-term data archiving with retrieval times in hours to days.        |
| Reduced Redundancy Storage (RRS)  | N/A                                | Deprecated in AWS, designed for non-critical, reproducible data that is infrequently accessed. |
