$hostName =  $env:COMPUTERNAME
$memberName = $hostName + "$"
ADD-ADGroupMember “containerhost” –members $memberName