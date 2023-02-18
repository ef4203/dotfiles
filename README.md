# Dotfiles / Configuration files

> Repository of all the configurations and scripts I use.

Use this or don't, I don't give support or liability for any of the scripts and configuration here.
Side effects may include sudden vim keybinds, cryptic shorthands and overwritten configuration.

# Installation

## MacOS
Clone the repository, then navigate with the terminal to the folder and execute the following commands:

```sh
cd MacOs
./install.sh
```

The script will create symlinks, so if you fork the repository you can keep your configuration up to date 
and synced across multiple computers.

## Windows (DEPRICATED)

Copy the entire command into an elevated powershell.

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/ef4203/dotfiles/master/Windows/install.ps1'))
```

## Linux (DEPRICATED)

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
