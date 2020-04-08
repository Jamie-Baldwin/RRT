# Useful commands

####################
# Active Directory #
####################

# All Users in AD    
Get-ADuser -filter * | select name 

# Users in Domain Admins
$names = Get-ADGroupMember "Domain Admins" | Select -ExpandProperty name

# Adding new User to OU Department
New-ADUser -Name "New TestUser" -GivenName "New" -Surname "TestUser" -DisplayName "New TestUser" -SamAccountName "ntestuser" -UserPrincipalName "ntestuser@regriskrechdemo.com" -Path "OU=Test OU,OU=Group Policy OU,DC=REGRISKTECH,DC=internal" -AccountPassword (ConvertTo-SecureString -AsPlainText "RRTu1ysses#" -Force) -Enabled $true


#############################
# Classifier Administration #
#############################

# Turning on "Include this selector in clearance and attachment checks:" on Selector
Set-SingleSelectSelector -Name MySingleSelector -ClearanceType Restrictive
