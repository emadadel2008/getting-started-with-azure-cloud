<h1 align="center">Hi 👋, I'm Emad Adel</h1>
<h3 align="center">Cloid Solution Architect</h3>

<p align="left"> <a href="https://twitter.com/emadadel2008" target="blank"><img src="https://img.shields.io/twitter/follow/emadadel2008?logo=twitter&style=for-the-badge" alt="emadadel2008" /></a> </p>

- 📫 How to reach me **me@emadadel.com**

### Blogs posts
<!-- BLOG-POST-LIST:START -->
<!-- BLOG-POST-LIST:END -->

<h3 align="left">Connect with me:</h3>
<p align="left">
<a href="https://twitter.com/emadadel2008" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/twitter.svg" alt="emadadel2008" height="30" width="40" /></a>
<a href="https://linkedin.com/in/emadadel" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/linked-in-alt.svg" alt="emadadel" height="30" width="40" /></a>
<a href="https://fb.com/emadadel87" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/facebook.svg" alt="emadadel87" height="30" width="40" /></a>
<a href="https://www.youtube.com/c/emadadel2008" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/youtube.svg" alt="emadadel2008" height="30" width="40" /></a>
<a href="/https://www.emadadel.com//feeds/posts/default" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/rss.svg" alt="https://www.emadadel.com//feeds/posts/default" height="30" width="40" /></a>
</p>

<h3 align="left">Languages and Tools:</h3>
<p align="left"> <a href="https://www.arduino.cc/" target="_blank" rel="noreferrer"> <img src="https://cdn.worldvectorlogo.com/logos/arduino-1.svg" alt="arduino" width="40" height="40"/> </a> <a href="https://aws.amazon.com" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/amazonwebservices/amazonwebservices-original-wordmark.svg" alt="aws" width="40" height="40"/> </a> <a href="https://azure.microsoft.com/en-in/" target="_blank" rel="noreferrer"> <img src="https://www.vectorlogo.zone/logos/microsoft_azure/microsoft_azure-icon.svg" alt="azure" width="40" height="40"/> </a> <a href="https://www.docker.com/" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/docker/docker-original-wordmark.svg" alt="docker" width="40" height="40"/> </a> <a href="https://dotnet.microsoft.com/" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/dot-net/dot-net-original-wordmark.svg" alt="dotnet" width="40" height="40"/> </a> <a href="https://cloud.google.com" target="_blank" rel="noreferrer"> <img src="https://www.vectorlogo.zone/logos/google_cloud/google_cloud-icon.svg" alt="gcp" width="40" height="40"/> </a> <a href="https://git-scm.com/" target="_blank" rel="noreferrer"> <img src="https://www.vectorlogo.zone/logos/git-scm/git-scm-icon.svg" alt="git" width="40" height="40"/> </a> <a href="https://ifttt.com/" target="_blank" rel="noreferrer"> <img src="https://www.vectorlogo.zone/logos/ifttt/ifttt-ar21.svg" alt="ifttt" width="40" height="40"/> </a> <a href="https://www.linux.org/" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/linux/linux-original.svg" alt="linux" width="40" height="40"/> </a> <a href="https://www.microsoft.com/en-us/sql-server" target="_blank" rel="noreferrer"> <img src="https://www.svgrepo.com/show/303229/microsoft-sql-server-logo.svg" alt="mssql" width="40" height="40"/> </a> <a href="https://www.mysql.com/" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/mysql/mysql-original-wordmark.svg" alt="mysql" width="40" height="40"/> </a> </p>


<h3 align="left">Support:</h3>
<p><a href="https://www.buymeacoffee.com/emadadel2008"> <img align="left" src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" height="50" width="210" alt="emadadel2008" /></a></p><br><br>

</p>
</p>
</p>
</p>

The provided code snippet showcases the creation of a virtual machine (VM) in Azure using Azure PowerShell. Let's break it down step by step:

**1. Connect to Azure:**

- `Connect-AzAccount`: This line establishes a connection between your local machine and your Azure subscription using Azure PowerShell.

**2. Create a Resource Group:**

- `New-AzResourceGroup`: This line creates a resource group named "TutorialResources" in the "Central US" location. Resource groups act as containers to organize your Azure resources like VMs, virtual networks, etc.

**3. Get VM Credentials:**

- `$cred = Get-Credential`: This line prompts you to enter a username and password for the administrator account that will be used to access the VM after creation.

**4. Define VM Parameters:**

- A variable named `$vmParams` is created using a hashtable (indicated by `@{}`). This hashtable stores all the essential details needed to configure the VM. Here's a breakdown of the parameters:
    - `ResourceGroupName`: Set to "TutorialResources", referencing the previously created group.
    - `Name`: Sets the VM name to "TutorialVM1".
    - `Location`: Specifies the location as "eastus" (East US).
    - `ImageName`: Defines the desired OS image, here it's "Win2016Datacenter" (Windows Server 2016 Datacenter).
    - `PublicIpAddressName`: Assigns a public IP address name, "tutorialPublicIp", for remote access.
    - `Credential`: Stores the administrator credentials obtained in step 3.
    - `OpenPorts`: Opens port 3389 (remote desktop) for accessing the VM.
    - `Size`: Sets the VM size to "Standard_D2s_v3", which defines computing resources like CPU and memory.

**5. Create the Virtual Machine:**

- `$newVM1 = New-AzVM @vmParams`: This line executes the `New-AzVM` cmdlet with the parameters stored in `$vmParams`. This creates the virtual machine "TutorialVM1" based on the specified configuration.

**6. Note:**

- The comment section refers to the online documentation for the specific code block used in this example. 

By running this script, you'll be deploying a Windows Server 2016 Datacenter virtual machine named "TutorialVM1" with remote desktop access enabled in the "eastus" Azure region. Remember to replace placeholders like usernames and passwords with your desired values.



