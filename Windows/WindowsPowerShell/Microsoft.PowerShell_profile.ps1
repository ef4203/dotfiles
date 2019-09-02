# Cmdlet that provides a Linux-Like sudo command.
function sudo
{
    if ($args.Length -eq 1)
    {
        Start-Process $args[0] -Verb "runAs"
    }

    if ($args.Length -gt 1)
    {
        Start-Process $args[0] -ArgumentList $args[1..$args.Length] -Verb "runAs"
    }
}

# Aliases for less typing.
Set-Alias -Name g -Value git
Set-Alias -Name less -Value more

# Activate fancy prompt.
pshazz use aag
