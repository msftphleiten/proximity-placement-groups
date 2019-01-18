# Azure Proximity Placement Groups
## Intro

Proximity Placement Groups (PPG) are an Azure feature that is in private preview. The goal is to place different resources near to each other to avoid network latency.

The preview is limited to
- US West Central
- US West
- Southeast Asia 
- West Europe 
- US East

Followed by others in the coming weeks/months

To deploy PPGs you can use the Buttons or the scripts and ARM templates available within this repository.

![Image of PPG](https://github.com/msftphleiten/proximity-placement-groups/blob/master/PPG.jpg)

## Start deployment
to deploy a PPG you can use the provided ARM template or click Deploy on Azure

### Create a new PPG
First action is to create a new PPG, a PPG is always associated to a Ressource Group and an Azure Region
[![Deploy to Azure](http://azuredeploy.net/deploybutton.png)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmsftphleiten%2Fproximity-placement-groups%2Fmaster%2F2-create-proximity-placement-group%2Ftemplate.json)

### Create a new PPG
If you plan to deploy a non-clustered solution you can start to deploy a new VM associated to the PPG.
Always start to deploy the least common resource as the location of the PPG will be set when deploying the first associated resource.

### Create an Availability Set associated with the PPG
If you plan to deploy clusted installation with Availability Sets create a new Availability Set.

[![Deploy to Azure](http://azuredeploy.net/deploybutton.png)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmsftphleiten%2Fproximity-placement-groups%2Fmaster%2F3-create-availability-set-inside-proximity-placement-group%2Ftemplate.json)

### Create a new VM inside the created Availability Set
Deploying a new VM into the AvSet works the same way and you can use the portal or your scripts to deploy it.
![Image of VM AvSet](https://github.com/msftphleiten/proximity-placement-groups/blob/master/VM-create-AvSet.png)

## Using Azure Availability Zones with Proximity Placement Groups
You can also combine the usage with Availability Zones, just create one PPG per zone and select the zone with your first VM deployment associated with the PPG.

# Test Deployment
After you deployed PPGs you can test your deployment to check the latency.
IMPORTANT: Use tools like SAP NIPING to test the latency, the test needs to be done using TDP or UDP packets.
