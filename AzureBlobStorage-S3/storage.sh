az storage account create --name lunasynthia --resource-group LunaResourceGroup --location westeurope
az configure
az login
az account show --output table
az storage account list --output table

az role assignment create --assignee b085bdfb-9e3d-49b8-99fe-8b72c17b4758 --role "Storage Blob Data Contributor" --scope /subscriptions/215e851f-019e-434a-a628-04fbeafe6e48/resourceGroups/LunaResourceGroup/providers/Microsoft.Storage/storageAccounts/lunasynthia

az storage account show --name lunasynthia --resource-group LunaResourceGroup


az storage blob upload --account-name lunasynthia --container-name mycontainer --name myblob.txt --file /path/to/local/file.txt
az storage blob list --account-name lunasynthia --container-name lunacontainer --output table
az storage blob download --account-name lunasynthia --container-name mycontainer --name myblob.txt --file /path/to/download/file.txt


