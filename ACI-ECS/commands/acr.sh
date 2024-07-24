mkdir nginx-docker
mkdir html
touch html/index.html
docker build -t my-nginx-image .
docker run -d -p 80:80 my-nginx-image

az group create --name LunaResourceGroup --location westeurope
az acr create --name luna-registry --resource-group LunaResourceGroup  --sku Basic
#WARNING: Resource provider 'Microsoft.ContainerRegistry' used by this operation is not registered. We are registering for you.
#WARNING: Registration succeeded.

az acr login --name lunaregistry
#if you miss this ^^
#unauthorized: {"errors":[{"code":"UNAUTHORIZED","message":"authentication required, visit https://aka.ms/acr/authorization for more information."}]}

docker tag my-nginx-image lunaregistry.azurecr.io/my-nginx-image:v1
docker push lunaregistry.azurecr.io/my-nginx-image:v1

