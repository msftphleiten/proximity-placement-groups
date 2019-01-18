<#
 .PARAMETER resourceGroupName
    The resource group where the template will be deployed. Can be the name of an existing or a new resource group.
#>

param(
 [string] $resourceGroupName,

 [string] $templateFilePath = "template.json",

 [string] $parametersFilePath = "parameters.json"
)


#Create or check for existing resource group
$resourceGroup = Get-AzureRmResourceGroup -Name $resourceGroupName -ErrorAction SilentlyContinue
if(!$resourceGroup)
{
    Write-Host "Resource group '$resourceGroupName' does not exist. To create a new resource group, please enter a location.";
    if(!$resourceGroupLocation) {
        $resourceGroupLocation = Read-Host "resourceGroupLocation";
    }
    Write-Host "Creating resource group '$resourceGroupName' in location '$resourceGroupLocation'";
    New-AzureRmResourceGroup -Name $resourceGroupName -Location $resourceGroupLocation
}
else{
    Write-Host "Using existing resource group '$resourceGroupName'";
}

# Start the deployment
Write-Host "Starting deployment...";
if(Test-Path $parametersFilePath) {
    New-AzureRmResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateFile $templateFilePath -TemplateParameterFile $parametersFilePath;
} else {
    New-AzureRmResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateFile $templateFilePath;
}

Get-AzureRmResource -ResourceGroupName $resourceGroupName