# Test restore

Chart testing internal nuget server within K8S by means of Jobs.
You can adjust the target Nuget server URL and image name.
Run commands from WSL/Linux shell.
The test job downloads approximately 300MB with reach run.

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

## Testing performance on skylab-dev and skylab-test

```sh
# Deploy both jobs
./deploy-job-skylab-test.sh && ./deploy-job-skylab-dev.sh

# Observe the results and completion time
k get job test-restore -n skylab-dev &&  k get job test-restore -n skylab-test

```
