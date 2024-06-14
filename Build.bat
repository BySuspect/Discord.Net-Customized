@echo off

dotnet pack "src\Discord.Net.Core\Discord.Net.Core.csproj" -c Release 
dotnet pack "src\Discord.Net.Rest\Discord.Net.Rest.csproj" -c Release
dotnet pack "src\Discord.Net.WebSocket\Discord.Net.WebSocket.csproj" -c Release
dotnet pack "src\Discord.Net.Commands\Discord.Net.Commands.csproj" -c Release
dotnet pack "src\Discord.Net.Webhook\Discord.Net.Webhook.csproj" -c Release
dotnet pack "src\Discord.Net.Interactions\Discord.Net.Interactions.csproj" -c Release
