az aks create --resource-group LunaResourceGroup --name lunaakscluster --node-count 1 --enable-addons monitoring --generate-ssh-keys

 az aks get-credentials --name lunaakscluster\
 --resource-group LunaResourceGroup

 az aks get-credentials --resource-group LunaResourceGroup --name lunaakscluster


# auto scale
kubectl autoscale deployment nginx-deployment --cpu-percent=50 --min=1 --max=10

#manually scale
kubectl scale deployment nginx-deployment --replicas=10
