# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install required packages.
choco install visualstudio2019community git -y

# Clone Unreal Engine 4 and create required directories.
Powershell.exe -c git clone git@github.com:EpicGames/UnrealEngine.git
New-Item -Path C:\UnrealProjects

# Install Unreal Engine dependencies.
& C:\Users\Administrator\UnrealEngine\Setup.bat