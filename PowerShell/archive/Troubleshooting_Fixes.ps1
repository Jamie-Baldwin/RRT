<#****************************************************************
Troubleshooting fixes:

Error: "cannot be loaded because running scripts is disabled on this system";
Fix: Open PowerShell as Administrator and enter "Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Unrestricted"

Error: "The 'Microsoft.ACE.OLEDB.12.0' provider is not registered on the local machine.";
Fix: Install Microsoft Access Database Engine: https://www.microsoft.com/en-us/download/details.aspx?id=13255

Error: "C:\....\.accdb" not a valid file path
Fix: Make sure front and back end Access files are connected

Error: "Access is denied" when creating a new AD user
Fix: Run Powershell as Administrator

Error: "Department is not valid"
Fix: OU folder does not exist, create in AD
Fix: In Active Directory, View > Advanced Features, go to OU folder, propeties, Attribute Editor, DistinguishedName 

****************************************************************#>