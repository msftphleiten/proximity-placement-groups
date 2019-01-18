# Azure Proximity Placement Groups
## Intro

Proximity Placement Groups (PPG) are an Azure feature that is in private preview. The goal is to place different resources near to each other to avoid network latency.

![Image of PPG](https://github.com/msftphleiten/proximity-placement-groups/blob/master/PPG.jpg)

## Start deployment
to deploy a PPG you can use the provided ARM template or click Deploy on Azure

### Create a new PPG
[![Deploy to Azure](http://azuredeploy.net/deploybutton.png)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmsftphleiten%2Fproximity-placement-groups%2Fmaster%2F2-create-proximity-placement-group%2Ftemplate.json)

### Create an Availability Set associated with the PPG
[![Deploy to Azure](http://azuredeploy.net/deploybutton.png)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmsftphleiten%2Fproximity-placement-groups%2Fmaster%2F3-create-availability-set-inside-proximity-placement-group%2Ftemplate.json)

