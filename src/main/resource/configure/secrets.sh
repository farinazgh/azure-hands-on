az ad sp create-for-rbac --name LunaServicePrincipal --role Contributor --scopes /subscriptions/215e851f-019e-434a-a628-04fbeafe6e48

az login --service-principal --username b085bdfb-9e3d-49b8-99fe-8b72c17b4758  --password t3L8Q~mn2DZWH6WPnZz3xkn2Ly2M9H~aYtsvzabT  --tenant 1b314f70-6322-4907-b11e-1ea92e530ca8

export AZURE_CLIENT_ID="b085bdfb-9e3d-49b8-99fe-8b72c17b4758"
export AZURE_SECRET="t3L8Q~mn2DZWH6WPnZz3xkn2Ly2M9H~aYtsvzabT"
export AZURE_TENANT="1b314f70-6322-4907-b11e-1ea92e530ca8"
