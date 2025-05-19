# Use official .NET 9 SDK image for build
FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build

WORKDIR /src

COPY . .

RUN dotnet publish -c Release -o /app/publish

# Use official .NET 9 runtime image for final image
FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS base

WORKDIR /app

COPY --from=build /app/publish .

EXPOSE 3000

ENTRYPOINT ["dotnet", "LandingPage.dll"]
