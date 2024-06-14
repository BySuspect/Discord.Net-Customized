@echo off
setlocal enabledelayedexpansion

set /p VERSION_SUFFIX=<BuildVersion.txt

set /a NEXT_VERSION_SUFFIX=%VERSION_SUFFIX%+1

(echo %NEXT_VERSION_SUFFIX%)>BuildVersion.txt

set OUTPUT_DIR=C:/CustomNugets

dotnet pack "src\Discord.Net.Core\Discord.Net.Core.csproj" -c Release -o %OUTPUT_DIR% --version-suffix %VERSION_SUFFIX%
dotnet pack "src\Discord.Net.Rest\Discord.Net.Rest.csproj" -c Release -o %OUTPUT_DIR% --version-suffix %VERSION_SUFFIX%
dotnet pack "src\Discord.Net.WebSocket\Discord.Net.WebSocket.csproj" -c Release -o %OUTPUT_DIR% --version-suffix %VERSION_SUFFIX%
dotnet pack "src\Discord.Net.Commands\Discord.Net.Commands.csproj" -c Release -o %OUTPUT_DIR% --version-suffix %VERSION_SUFFIX%
dotnet pack "src\Discord.Net.Webhook\Discord.Net.Webhook.csproj" -c Release -o %OUTPUT_DIR% --version-suffix %VERSION_SUFFIX%
dotnet pack "src\Discord.Net.Interactions\Discord.Net.Interactions.csproj" -c Release -o %OUTPUT_DIR% --version-suffix %VERSION_SUFFIX%

endlocal
