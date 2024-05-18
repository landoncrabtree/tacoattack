# Unshare all shares

$shares = Get-SmbShare
foreach ($share in $shares) {
    if ($share.Name -notlike "*$") {
        Write-Host "Removing share: $($share.Name) @ $($share.Path)"
        Remove-SmbShare -Name $share.Name -Force
    }
}
