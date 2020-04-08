Clear-Host

$project = "Alpha"
$shortcode = "ALXA"

$email = "jbaldwin@ext.com"
$email2 = "smarshall@ext.com"

$licencefile = "C:\Boldon James\220120\Power Classifier for Admin Lic 220120\impCPA.lic"
Set-SessionLicence –LicenceFile $licencefile




$condition = New-Condition -Name "CLR - $project External"
$entryCombiningOR = [ClassifierAdminModels.Libraries.Condition.ConditionEntryCombiningTypes]::OR

Add-ConditionType -Condition $condition -ConditionTypeName 'Dynamic Clearance User Properties'
 
Add-ConditionEntry -Condition $condition -ConditionTypeName 'Dynamic Clearance User Properties' -Name "mail" -Check Equal -Value $email
Add-ConditionEntry -Condition $condition -ConditionTypeName 'Dynamic Clearance User Properties' -Name "mail" -Check Equal -Value $email2
$condition.ConditionTypes[0].ConditionEntryCombining = $entryCombiningOR
Set-Condition -Condition $condition


Set-SingleSelectSelector -Name Department -ClearanceType Restrictive







#>
#$condition = Get-Condition -Name 'CLR - Alpha External'

#Remove-ConditionEntry -Condition $condition -ConditionTypeName $conditionType -First
#Get-Help Remove-ConditionEntry -Full
#Remove-ConditionEntry -Condition $condition -ConditionTypeName "Dynamic Clearance User Properties" -All
#$con = Get-ConditionType -ConditionTypeName 'Dynamic Clearance User Properties' -Condition $condition | Select -ExpandProperty Name
#Set-Condition $condition
#Write-Output $con


#Get-Help Condition

#Get-Condition -Name 'CLR - Alpha External'

#Get-ConditionType -ConditionTypeName 'Dynamic Clearance User Properties' -Condition $condition











