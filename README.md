### Harnessing Infrastructure as Code with Visual Studio Code and Terraform

In this age and time of modern software development, the fusion of Visual Studio Code (VS Code) and Terraform has revolutionized the way infrastructure is managed. VS Code, a lightweight yet powerful source code editor,  effortlessly  integrates with Terraform, an Infrastructure as Code (IaC) tool, providing a robust platform for automating infrastructure provisioning. Developers can leverage VS Code's rich ecosystem of extensions and powerful editing features to streamline the creation and maintenance of Terraform scripts. This dynamic duo empowers teams to define, version, and manage infrastructure configurations efficiently, fostering collaboration and ensuring consistency across development, testing, and production environments. As organizations increasingly embrace cloud-native approaches, the combination of VS Code and Terraform emerges as a pivotal force in shaping the future of IaC.

With this combination, you no longer need to click around the portal creating resources or writing scripts to deploy a resource. Instead, the template defines the resources, and the provider management block is responsible for creating the infrastructure using declarative configuration files. Here are some key points from my description:

## Benefits of This Duo

Versioning and Maintenance: 

With this duo, infrastructure code is maintained in version control systems (e.g., Git). This allows for tracking changes, rolling back to previous states, and collaborating with team members on infrastructure changes.

Automation:

This duo, facilitates automation by defining the desired state of infrastructure in configuration files. Users can then apply these configurations to automatically create, modify, or delete resources as needed.

Control through Code: 

Infrastructure definitions are expressed in a declarative language, allowing users to specify the desired state of their infrastructure. Terraform's job is to ensure that the actual infrastructure matches the defined state.

Abstraction of Provider Management: 

Terraform abstracts the complexities of interacting with various cloud providers, such as Azure, AWS, or Google Cloud. The provider management layer handles the communication and interaction with the underlying cloud APIs.

Elimination of Manual Steps:

Instead of manually clicking through a web portal or writing complex deployment scripts, users define their infrastructure in Terraform configuration files, making the process repeatable and less error-prone.

Template-Driven Approach: 

The infrastructure is defined using templates or configuration files, often written in HashiCorp Configuration Language (HCL). These templates describe the relationships and configurations of the resources.

Immutable Infrastructure: 

Terraform follows the principle of immutability, where infrastructure changes are made by creating entirely new resources or modifying existing ones rather than modifying in-place. This helps in avoiding configuration drift.

By combining these features, Terraform provides a consistent and scalable way to manage infrastructure across different cloud providers and on-premises environments. Users can define, version, and automate their infrastructure, bringing benefits like repeatability, consistency, and collaboration to the process of managing complex IT environments.

## Integrating Terraform With Vs Code
Install terraform extension into your Virtual Studio code, this is done by clicking on the extension icon on your Vs code, type terraform on the search bar and chose the version you need and click install from the pull-down menu

## Azure Provider

The Azure Provider is used to configure infrastructure in Microsoft Azure using the Azure Resource Manager API's. Below is example of a block of azure provider code

![image](https://github.com/akpatiudo/infrastructure/assets/118566096/2975b2db-468d-432a-ac97-172d7a81e69f)

![image](https://github.com/akpatiudo/infrastructure/assets/118566096/e7165e36-d962-4acc-8aec-3f9b788c680e)

## Terraform Block:

The terraform block is used to configure Terraform settings. In this case, it specifies the required providers for the current configuration.

Within the terraform block, there is another block called required_providers. This block is used to specify the providers required for the configuration.
Azure Provider Configuration:

Inside the required_providers block, there is a configuration block for the Azure provider (azurerm).
azurerm is the alias used for the Microsoft Azure provider in Terraform.
source Attribute:

The source attribute specifies the source of the Azure provider. In this case, the source is "hashicorp/azurerm," which means it's referring to the Azure provider maintained by HashiCorp.
version Attribute:

The version attribute specifies the version of the Azure provider to use. Here, it is set to "3.85.0". This means that Terraform will use version 3.85.0 of the Azure provider for this configuration.

## The provider Configuration:

Provider Block:

The provider block is used to configure a specific provider, in this case, "azurerm."
features Block:

The features block is nested within the azurerm provider block. It is currently empty (contains no configuration). This block is used to enable optional features for the provider. In this example, no specific features are enabled. however, in the code file main.tf you will find the the resources used for the optional feature

This Terraform configuration is setting up the Microsoft Azure provider, specifying the source and version of the provider, and configuring it with default settings. The configuration is ready to be expanded with additional resources and settings related to Microsoft Azure infrastructure.

In this Project, the  main.tf file is a block of code that will create a resource group, storage account and a storage container in azure. you have to log into your azure account with  this code az login then follow with the below terraform commands


1)  terraform init - This is used to initialize the working directory that contains the Terraform configuration files
   
2)  terraform plan - Here Terraform will create an execution plan. Here you can see what changes Terraform is going to make to your infrastructure based on the configuration file

3) terraform apply - This will execute the actions in the Terraform plan

4) terraform destroy -This will destroy your infrastruture objects based on the Terraform configuration

below is picture of infrastructured created and deployed
![image](https://github.com/akpatiudo/infrastructure/assets/118566096/c250e153-2290-4be5-8ddc-5b73baab6189)

![image](https://github.com/akpatiudo/infrastructure/assets/118566096/927108b6-86d1-481e-965d-f054f90dfe3c)











