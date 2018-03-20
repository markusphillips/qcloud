install-windowsfeature AD-Domain-Services
Import-Module ADDSDeployment


$hostName =  $env:COMPUTERNAME
$memberName = $hostName + "$"
ADD-ADGroupMember “containerhost” –members $memberName


Install-AdServiceAccount EU-SVC
Install-AdServiceAccount DH-SVC


Start-BitsTransfer https://raw.githubusercontent.com/Microsoft/Virtualization-Documentation/live/windows-server-container-tools/ServiceAccounts/CredentialSpec.psm1
Import-Module ./CredentialSpec.psm1
New-CredentialSpec -Name EU-SVC  -AccountName EU-SVC
New-CredentialSpec -Name DH-SVC  -AccountName DH-SVC
