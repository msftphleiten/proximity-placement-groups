param(
 [Parameter(Mandatory=$True)]
 [string] $subscriptionId
)

Select-AzureRmSubscription -SubscriptionID $subscriptionId;