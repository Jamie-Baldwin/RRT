#testing
Clear-Host

# Just need an active list of projects
$projectList = @('Alpha','Beta','Delta','Gamma')

$projectsClassifier = ""

$project = "Apollo1"
$email = "jamie@external.com"
#$condition = Get-Condition -Name "CLR - $project External"
#$numExternal = $condition.ConditionTypes[0].ConditionEntries.Count - 1
$filt='*External*'
#get-aduser -f {name -like $filt} | format-list name


#HEREEEEEE
$conditions = Get-Condition -Name  | Select -ExpandProperty Name

#foreach($con in $conditions){
#    Write-Host $con
#}


#$exists = $false


<##############################################################
        try {
            $ErrorActionPreference = 'Stop'
            $condition = Get-Condition -Name "CLR - $project External"
        }
        Catch{
            "Error occured"
            $ErrorOccured=$true
        }

        if(!$ErrorOccured) {
            $numExternal = $condition.ConditionTypes[0].ConditionEntries.Count - 1

            for($i=0; $i -le $numExternal; $i++){
                $val = $condition.ConditionTypes[0].ConditionEntries[$i].Value
                If($email -eq $val){
                    $projectsClassifier += "$project,"
                }
            }
        }
#############################################################################>


<#foreach($condition in $conditions){
    If($condition.Substring($condition.Length - 8) -eq "External"){
        $pro = $condition.split(" ")[2]
        If($project -eq $pro){
            Write-Host "True - $condition" -ForegroundColor Green
            $exists = $true
        }
        Else{
            Write-Host "False - $condition" -ForegroundColor Red
        }
    }
}

If($exists){
    Write-Host "Project $project exists in Classifier" -ForegroundColor Magenta
}
Else{
    Write-Host "Project $project does not exist in Classifier" -ForegroundColor Cyan
}
#>
<#
# Loop through backwards to avoid skipping any values
for($i=$numExternal; $i -ge 0; $i--){
    $val = $condition.ConditionTypes[0].ConditionEntries[$i].Value
    If($email -eq $val){
        Remove-ConditionEntry -Condition $condition -ConditionTypeName 'Dynamic Clearance User Properties' -Index $i
    }
}
Set-Condition $condition
#>



#Get-Help Remove-ConditionEntry -fULL

#$condition.ConditionTypes.Count

#
#

# $projectList will be active list of projects
<#
Function Check_External_Conditions($dataProjects){
    ForEach($project in $dataProjects){
        $cond = Get-Condition -Name "CLR - $project External"
        $numExternal = $cond.ConditionTypes[0].ConditionEntries.Count - 1

        for($i=0; $i -le $numExternal; $i++){
            $val = $cond.ConditionTypes[0].ConditionEntries[$i].Value
            If($user -eq $val){
                $projectsClassifier += "$project,"
            }
        }
    }

    If($projectsClassifier){
        return $projectsClassifier.Trim(",")
    }
}
#>