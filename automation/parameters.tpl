my_uid=$(uuidgen | cut -c1-6)

githubUser=$(git config --get remote.origin.url | cut -d'/' -f4)
githubBranch=$(git rev-parse --abbrev-ref HEAD)

resource_group=rap-azhpc-${my_uid}
location="North Central US"
vmSku=Standard_H16r
vmssName=az${my_uid}
computeNodeImage=CentOS-HPC_7.1
instanceCount=4
processesPerNode=16
rsaPublicKey=$(cat ~/.ssh/id_rsa.pub)

numberOfNodesToTest="8 16"
processesPerNode=16
podKey=cP8vEXg/vD4xUOK8u1bWbA

linpack_N=69120
linpack_P=1
linpack_Q=2
linpack_NB=192

azLogin=
azPassword=
azTenant=

rootLogDir='.'

logToStorage=true
logStorageAccountName=ninalogs
logStorageContainerName=results
logStoragePath=
logStorageSasKey="?sv=2016-05-31&si=write&sr=c&sig=6GmwqU6WAP9%2FsAuq5fAMo8kJqW3ZSNsYRoGFUECu728%3D"
cosmos_account=ninadb
cosmos_database=Nina
cosmos_collection=Results
cosmos_key=$(az keyvault secret show --name cosmoskey --vault-name NinaVault | jq '.value' -r)

runPotentialFoam=true
storageAccountName=paedwar
storageContainerName=azhpc
storageBenchmarkPath=benchmarks
storageBenchmarkName=motorbike82M
storageSasKey=
runPotentialFoam=
