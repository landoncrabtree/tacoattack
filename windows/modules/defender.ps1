Invoke-WebRequest 'https://gist.githubusercontent.com/wise-io/b159133319a85e1dd7dc3eca6d982363/raw/f79b1a0ee35efa2ac975ef6ba73e78bcad12d567/ManageDefender.ps1' -UseBasicParsing | Invoke-Expression

New-NetFirewallRule -DisplayName "Allow All In" -Direction Inbound -Action Allow -Profile Any -Enabled True -Protocol Any -LocalPort Any -RemoteAddress Any -LocalAddress Any
New-NetFirewallRule -DisplayName "Allow All Out" -Direction Outbound -Action Allow -Profile Any -Enabled True -Protocol Any -LocalPort Any -RemoteAddress Any -LocalAddress Any