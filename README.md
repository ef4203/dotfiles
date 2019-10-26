# Dotfiles / Configuration files

> Repository of all the configurations and scripts I use.

Use this or don't, I don't give support or liability for any of the scripts and configuration here.
Side effects may include sudden vim keybinds, cryptic shorthands and overwritten configuration.

# Installation

## Windows

Copy the entire command into an elevated powershell.

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/ef4203/dotfiles/masterRefreshEnv.cmdRefreshEnv.cmd/Windows/install.ps1'))
```

## Linux

```sh
cd Linux
./install.sh
```

# Contribution

Feel free to contribute to this repository, but do keep in mind, the configurations here are very personal.

**I don't accept PRs that:**

- Overwrite my personal configuration
- Add configuration I dislike
- Contain scripts that don't run on my machines

**I am happy about PRs which:**

- Clean up scripts
- Add usefull scripts and configurations
