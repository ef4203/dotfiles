$myDomains = @(
    "bar.com",
    "foo.bar.com"
    "www.bar.com"
)
$myEmail = "foo@bar.com"
$myToken = "123"
$myZone = "123"

function Log($string, $level) {
    if ( $level -eq $null ) { $level = "info" }
    if ( $level -eq "info" ) { $color = "white" }
    if ( $level -eq "warn" ) { $color = "yellow" }
    if ( $level -eq "success" ) { $color = "green" }
    if ( $level -eq "error" ) { $color = "red" }
    $timestamp = Get-Date -Format "yyyy-MM-dd hh:mm:ss"
    write-host [$timestamp] [$level] $string -foregroundcolor $color
}

Log "Starting DNS Update"

$currAddr = $null
Get-NetIPAddress | ForEach-Object {
    if ( $_.PrefixOrigin -eq "RouterAdvertisement" -and $_.SuffixOrigin -eq "Link" ) {
        $currAddr = $_.IPAddress
    }
}

if ( $currAddr -eq $null ) {
    Log "Cannot retrieve IPv6 address... Aborting" "error"
    exit
}

Log "Found IPv6 address $currAddr" "success"

$headers = @{}
$headers.Add("X-Auth-Email", $myEmail)
$headers.Add("X-Auth-Key", $myToken)
$headers.Add("Content-Type", "application/json")

try {
    $request = Invoke-WebRequest -Headers $headers -Uri "https://api.cloudflare.com/client/v4/zones/$myZone/dns_records"
} catch {
    Log "Cannot reach cloudflare API... Aborting" "error"
    exit
}

Log "Positive response from cloudflare" "success"

($request.Content | ConvertFrom-Json).result | ForEach-Object {
    if ( $_.type -eq "AAAA" -and ($myDomains -contains $_.name) -and ($_.content -ne $currAddr) ) {
        $name = $_.name
        $id = $_.id

        Log "Entry for $name is out of date"

        $body = @{
            type = "AAAA"
            name = $name
            content = $currAddr
            proxied = $true
        } | ConvertTo-Json

        try {
            Invoke-WebRequest -Headers $headers -Body $body -Method 'PUT' -Uri "https://api.cloudflare.com/client/v4/zones/$myZone/dns_records/$id" | Out-Null
            Log "Updated $name successfully" "success"
        } catch {
            Log "Failed to update $name... Skipping" "warn"
        }
    }
}
Log "Done"
