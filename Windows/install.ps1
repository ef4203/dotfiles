#Requires -RunAsAdministrator

# Install and configure choco package manager
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

choco feature enable -n allowGlobalConfirmation

# Install Software With Choco
# Base stuff
choco install firefox
choco install sumatrapdf.install

# Dev Stuff
choco install chromium
choco install vscode
choco install azure-data-studio
choco install git.install --params "/NoShellIntegration /GitOnlyOnPath /WindowsTerminal"

# Personal Stuff
choco install keepass
choco install sharex
choco install spotify
choco install ffmpeg
choco install youtube-dl
choco install obs-studio

# Download MSSQL
Invoke-WebRequest -Uri https://go.microsoft.com/fwlink/?linkid=853016 -OutFile SQL-Server-DEV.exe

# Download Teams
Invoke-WebRequest -Uri https://statics.teams.microsoft.com/production-windows-x64/1.2.00.21068/Teams_windows_x64.exe -OutFile Teams_windows_x64.exe

# Download Visual Studio
Invoke-WebRequest -Uri https://download.visualstudio.microsoft.com/download/pr/b6a85ca1-3add-4391-9d24-27fea671c700/ea7ec3e24daf9852dabe671a8c8b7131/vs_community.exe -OutFile vs_community.exe

# Enable "Show File Extensions" for Explorer
Push-Location
Set-Location HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced
Set-ItemProperty . HideFileExt "0"
Set-ItemProperty . ShowStatusBar "0"
Pop-Location

# Remove bloated shell keys
New-PSDrive -Name HKCR -PSProvider Registry -Root HKEY_CLASSES_ROOT

Push-Location
Set-Location HKCR:\Directory\shell
Remove-Item -Recurse ShareX

Set-Location -LiteralPath HKCR:\*\shell
Remove-Item -Recurse ShareX
Pop-Location
