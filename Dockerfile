FROM mcr.microsoft.com/dotnet/sdk:6.0-alpine
WORKDIR /app

COPY restore-proj/* /app/

ENTRYPOINT ./run-restore.sh
