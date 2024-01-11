Write-Host "You need to have admin/owner rights to import into existing stack or to create a new stack"
#Login to Contentstack
csdx auth:login

#Import into Contentstack
# $orgID = Read-Host "Enter Contentstack Organization ID"
# $stackName = Read-Host "Enter new stack name"
$repoPath = Read-Host "Enter git repo path - Organization/repo name"
# Write-Host $orgID + $stackName + $repoPath

csdx cm:stacks:seed --repo $repoPath 
# --org $orgID --stack-name $stackName

# csdx cm:stacks:seed --repo "Naga2478/ContentstackPOC" --org "blt7d3ebf66c3f8e89e" --stack-name "POC-India"
