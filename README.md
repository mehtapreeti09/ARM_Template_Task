# ARM_Template_Task

The task here was to create an ARM template for the below mentioned resouce requirements
- Virtual Network (doesn’t matter ip address range but needs to have 2 subnets)
- Virtual machine (any OS or SKU)
- Network Security Group (with an RDP or SSH rule and attached to a subnet)
- Storage Account (Region Sydney and standard tier GRS type)

This repo has task completed in 3 different ways, there is a different folder with each kind of deployment.

1. Deployment for azure portal (folder name: Azure Portal)
This folder has two files- 1. Template.json with the template and 2. Parameters.json. Both these files can be directly uploaded on to the ‘Deploy a custom template’ page on the portal. Parameter file has default values for all parameters except the password field.

2. Deployment for powershell 1 (folder name: Template+script)
This folder has two files- 1. Template.json with the template and 2. Powershell script for deployment. This powershell script has all the parameters as a part of the script so it can run without an external parameter file. You will need to input username and password at runtime.

3. Deployment for powershell 2 (folder name: Template+parameters+script)
This folder has 3 files- 1. Template.json with the template, 2. Parameters.json and 3. Powershell script. The powershell script uses the parameters.json file to fill the parameters while creating the resources. However, you will need to input username and password at runtime.

P.S.- 
-All resources are deployed using 1 template.
-For all deployments you can create a new RG or use an old RG. All resources will by default take the location of the RG.
-If you create a new RG in the powershell it will not ask for location, it will directly take Australia East as its location.	
-The template has 2 subnets for the Virtual network as per requirements.
-The first subnet is attached to the Network security group.
-The SSH and RDP connection is enabled using the template itself (not needed to pass in parameters)
-The storage account is hard coded to be Storage_V2 and Standard_GRS as per requirements.
-All the requirements of the question are exempt from the parameters.
-I have limited input options for parameters like Zone and osDiskType.
