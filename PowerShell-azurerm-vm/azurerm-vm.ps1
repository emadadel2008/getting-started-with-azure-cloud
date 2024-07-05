#Create virtual machines with the Azure PowerShell
#In this tutorial, you learn all of the steps involved in setting up a virtual machine with Azure PowerShell. The tutorial also covers output queries, Azure resource reuse, and resource cleanup.



Connect-AzAccount


New-AzResourceGroup -Name TutorialResources -Location "Central US"




$cred = Get-Credential -Message "Enter a username and password for the virtual machine."

$vmParams = @{
  ResourceGroupName = 'TutorialResources'
  Name = 'TutorialVM1'
  Location = 'eastus'
  ImageName = 'Win2016Datacenter'
  PublicIpAddressName = 'tutorialPublicIp'
  Credential = $cred
  OpenPorts = 3389
  Size = 'Standard_D2s_v3'
}
$newVM1 = New-AzVM @vmParams


#Note 
#https://learn.microsoft.com/en-us/powershell/azure/azureps-vm-tutorial?view=azps-12.0.0#code-try-5