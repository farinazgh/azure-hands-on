az ad sp create-for-rbac --name LunaServicePrincipal --role Contributor --scopes /subscriptions/****

az login --service-principal --username ****  --password ****  --tenant ****

export AZURE_CLIENT_ID="****"
export AZURE_SECRET="****"
export AZURE_TENANT="****"



