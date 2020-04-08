Clear-Host

$firstName = "Jamie"
$lastName = "Baldwin"
$user = "Jamie Baldwin"
$username = "jbaldwin"
$emailDB = "jbaldwin@regrisktechdemo.com"
$department = "IT"

$projectsDB = "Alpha"

#New-ADUser -Name $user -GivenName $firstName -Surname $lastName -DisplayName $user -SamAccountName $username -UserPrincipalName $emailDB -Path "OU=$department,OU=Domain Controllers,DC=REGRISKTECH,DC=training" -AccountPassword (ConvertTo-SecureString -AsPlainText "RRTu1ysses#" -Force) -Enabled $true

#Set-ADUser $username -Replace @{info=$projectsDB}