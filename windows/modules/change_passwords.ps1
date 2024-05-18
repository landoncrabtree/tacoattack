$newPassword = ""
while ($true) {
    $newPassword = Read-Host "Enter a new password for all users: "

    # Check if password meets the criteria
    if ($newPassword.Length -ge 12 -and
        $newPassword -match "[0-9].*[0-9].*[!@#$%^&*]" -and
        $newPassword -cmatch "[A-Z]") {
        break
    }
    else {
        Write-Host "Password must be at least 12 characters long, contain 2 numbers, 1 special character, and 1 uppercase letter."
    }
}

# Change passwords for all users
$users = Get-LocalUser
foreach ($user in $users) {

    # Skip the cyan and abcccc users
    if ($user.Name -eq "cyan" -or $user.Name -eq "abcccc") {
        continue
    }

    $user | Set-LocalUser -Password (ConvertTo-SecureString -AsPlainText $newPassword -Force)
}

$users | ForEach-Object { "$($_.Name):$newPassword" } | Out-File -Append -FilePath "user_passwords.txt"

$dc = $false
if (Get-WmiObject -Query "select * from Win32_OperatingSystem where ProductType='2'") {
    $dc = $true
    Write-Output "$Env:ComputerName [INFO] Domain Controller"
}

if ($dc) {
    $users = Get-ADUser -Filter * -Properties SamAccountName
    foreach ($user in $users) {
        # Skip the cyan and abcccc users
        if ($user.SamAccountName -eq "cyan" -or $user.SamAccountName -eq "abcccc") {
            continue
        }

        Set-ADAccountPassword -Identity $user.SamAccountName -NewPassword (ConvertTo-SecureString -AsPlainText $newPassword -Force)
    }
    $users | ForEach-Object { "$($_.SamAccountName):$newPassword" } | Out-File -Append -FilePath "user_passwords_dc.txt"
}

