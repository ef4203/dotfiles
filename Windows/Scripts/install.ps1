#Requires -RunAsAdministrator

Add-Type -AssemblyName Microsoft.VisualBasic
$devenabled = [Microsoft.VisualBasic.Interaction]::MsgBox("Developer machine?",'YesNo,Question', "Software Install Script")
$additionals = [Microsoft.VisualBasic.Interaction]::MsgBox("Additional Software?",'YesNo,Question', "Software Install Script")

# Install and configure choco package manager
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco feature enable -n allowGlobalConfirmation

# Every computers
choco install firefox
choco install sumatrapdf.install

# Install development stuff
If ($devenabled -eq "Yes")
{
    choco install chromium
    choco install azure-data-studio
    choco install insomnia-rest-api-client
    choco install mremoteng

    # Visual Studio Code
    choco install vscode --params "/NoDesktopIcon /NoQuicklaunchIcon /NoContextMenuFiles /NoContextMenuFolders"
    RefreshEnv
    code --install-extension aaron-bond.better-comments
    code --install-extension Angular.ng-template
    code --install-extension christian-kohler.path-intellisense
    code --install-extension CoenraadS.bracket-pair-colorizer
    code --install-extension eamodio.gitlens
    code --install-extension EditorConfig.EditorConfig
    code --install-extension eg2.vscode-npm-script
    code --install-extension esbenp.prettier-vscode
    code --install-extension firefox-devtools.vscode-firefox-debug
    code --install-extension HookyQR.beautify
    code --install-extension ms-python.python
    code --install-extension ms-vscode.cpptools
    code --install-extension ms-vscode.Go
    code --install-extension ms-vscode.vscode-typescript-tslint-plugin
    code --install-extension PKief.material-icon-theme
    code --install-extension streetsidesoftware.code-spell-checker
    code --install-extension streetsidesoftware.code-spell-checker-german
    code --install-extension twxs.cmake
    code --install-extension VisualStudioExptTeam.vscodeintellicode
    code --install-extension vscodevim.vim
    code --install-extension webfreak.debug
    code --install-extension Zignd.html-css-class-completio
    code --install-extension fallenwood.vim

    # Vim
    choco install vim --params "/NoDefaultVimrc /NoDesktopShortcuts"

    # Git
    choco install git.install --params "/NoShellIntegration /GitOnlyOnPath /WindowsTerminal"
    Invoke-WebRequest -Uri "https://raw.githubusercontent.com/ef4203/dotfiles/master/Windows/.gitconfig" -OutFile "$Env:USERPROFILE\.gitconfig"
}

# Install personal stuff
If ($additionals -eq "Yes")
{
    choco install keepass
    choco install spotify
    choco install ffmpeg
    choco install youtube-dl
}

# Enable 'Show File Extensions' as Explorer setting
Push-Location
Set-Location HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced
Set-ItemProperty . HideFileExt "0"
Set-ItemProperty . ShowStatusBar "0"
Pop-Location
