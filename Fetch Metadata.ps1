Login-AzAccount
Get-AzSubscription | ft
$subid = Read-Host -Prompt 'Enter the Subscription Name'
Select-AzSubscription -Subscription $subid
$rname = Read-Host -Prompt 'Enter the Resource Name'
Get-AzResource -Name $rname | ConvertTo-Json | Out-File -FilePath C:\Users\ricverma\Downloads\resourcelist.json
