echo "Restoring against $NUGET_SERVER"
dotnet restore test-restore.csproj --no-cache --configfile NuGet.config --source $NUGET_SERVER/v3/index.json
