#Login to Contentstack
csdx auth:login

#Import into Contentstack
$orgID = Read-Host "Enter Contentstack Organization ID"
$stackName = Read-Host "Enter new stack name"
$repoPath = Read-Host "Enter git repo path"

Write-Host $orgID + $stackName + $repoPath

csdx cm:stacks:seed --repo $repoPath --org $orgID --stack-name $stackName
