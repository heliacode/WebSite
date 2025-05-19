# Use official .NET 9 runtime image
FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS base

# Set working directory
WORKDIR /app

# Copy published output
COPY ./bin/Debug/net9.0/ ./

# Expose port 3000 (adjust if your app uses a different port)
EXPOSE 3000

# Run the application
ENTRYPOINT ["dotnet", "LandingPage.dll"]
