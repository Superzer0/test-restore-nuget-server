# Test restore

Chart testing internal nuget server within K8S by means of Jobs.
You can adjust the target Nuget server URL and image name.
Run commands from WSL/Linux shell

## Running locally

```sh
docker run -e "NUGET_SERVER=https://api.nuget.org" test-restore-job:latest 
```

## Running in the cluster

```sh
# Build image
./create-image-and-push.sh

# deploy the testing job 
./deploy-job.sh
```
