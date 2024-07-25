az acr credential show --name lunaregistry
#az acr update -n lunaregistry --admin-enabled true
az container create --name luna-nginx-container --resource-group LunaResourceGroup  \
--image lunaregistry.azurecr.io/my-nginx-image:v1 --cpu 1 --memory 1 \
--registry-login-server lunaregistry.azurecr.io \
--registry-username lunaregistry --registry-password bGn/giv8aUexyec72oYUCclyFkEFovGXVQtMv3uBap+ACRAKY3oz --ports 80
#WARNING: Resource provider 'Microsoft.ContainerInstance' used by this operation is not registered. We are registering for you.
#WARNING: Registration succeeded.

az network nsg create --resource-group LunaResourceGroup --name lunasg --location westeurope
#WARNING: Resource provider 'Microsoft.Network' used by this operation is not registered. We are registering for you.
#WARNING: Registration succeeded.

az network nsg rule create --nsg-name lunasg \
--name AllowHTTP --protocol tcp --priority 1000 --destination-port-range 80 --access allow \
--resource-group LunaResourceGroup

az container exec --resource-group LunaResourceGroup --name luna-nginx-container --exec-command "/bin/sh"
curl localhost
