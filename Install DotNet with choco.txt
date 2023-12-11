Set-ExecutionPolicy Unrestricted
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
enable-WindowsOptionalFeature -Online -FeatureName smb1protocol
choco install vcredist-all  dotnet-6.0-aspnetruntime netfx-4.8.1  -y

