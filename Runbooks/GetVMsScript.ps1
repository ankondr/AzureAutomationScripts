$CredentialAssetName = 'autoadmin'
$Cred = Get-AutomationPSCredential -Name $CredentialAssetName
$Account = Add-AzureRmAccount -Credential $Cred

Get-AzureRmVM | % { Write-Output $_.Name }
