# Checks if the script is running as administrator
if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Warning "You do not have Administrator rights to run this script!`nPlease re-run this script as an Administrator!"
    Exit
}

# Set execution policy to unrestricted
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Force

# Load chocolatey install module
Start-Process powershell.exe -ArgumentList "-File .\modules\chocolatey.ps1" -Verb RunAs -Wait
Write-Host "Chocolatey installed."

# Load GPO module
Start-Process powershell.exe -ArgumentList "-File .\modules\lgpo.ps1" -Verb RunAs -Wait
Write-Host "STIG GPOs applied."

# Load change passwords module
Start-Process powershell.exe -ArgumentList "-File .\modules\change_passwords.ps1" -Verb RunAs -Wait
Write-Host "All user passwords changed."

# Load prohibited media module
Start-Process powershell.exe -ArgumentList "-File .\modules\prohibited.ps1" -Verb RunAs -Wait
Write-Host "Scanned filesystem for prohibited media."

# Remove all shares
Start-Process powershell.exe -ArgumentList "-File .\modules\share.ps1" -Verb RunAs -Wait
Write-Host "All shares removed."

# Enable automatic updates
Start-Process powershell.exe -ArgumentList "-File .\modules\updater.ps1" -Verb RunAs -Wait
Write-Host "Automatic updates enabled."

# Load malwarebytes module
Start-Process powershell.exe -ArgumentList "-File .\modules\malwarebytes.ps1" -Verb RunAs -Wait
Write-Host "Malwarebytes installed (Scan must be run manually)."