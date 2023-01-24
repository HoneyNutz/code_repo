# Connect to Active Directory
Import-Module ActiveDirectory

# Define the company name to search for
$companyName = "MetaPhase Consulting, LLC"

# Search for users with the specified company name
$users = Get-ADUser -Filter {company -eq $companyName}

# Get the current users who have send on behalf permissions
$currentUsers = Get-Mailbox -Identity "no-reply@metaphaseconsulting.com" | Select-Object -ExpandProperty GrantSendOnBehalfTo

# Define the new users who should have send on behalf permissions
$newUsers = $users.SamAccountName

# Remove send on behalf permissions for users who no longer need it
$removeUsers = Compare-Object -ReferenceObject $currentUsers -DifferenceObject $newUsers
foreach($removeUser in $removeUsers) {
    Remove-RecipientPermission -Identity "no-reply@metaphaseconsulting.com" -AccessRights SendAs -Trustee $removeUser.InputObject
}

# Add send on behalf permissions for new users
$addUsers = Compare-Object -ReferenceObject $newUsers -DifferenceObject $currentUsers
foreach($addUser in $addUsers) {
    Add-RecipientPermission -Identity "no-reply@metaphaseconsulting.com" -AccessRights SendAs -Trustee $addUser.InputObject
}
