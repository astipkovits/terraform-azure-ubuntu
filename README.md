# terraform-azure-ubuntu
A terraform module to build an Ubuntu instance in Azure 

# Variables
The following variables are used
|**key** |**value**  | **required** |
|--|--| -- |
|name  |The name of the VM to be created  | yes
|admin_username  |The admin username for the VM   | yes
|admin_password  |The admin password for the VM  | yes
|resource_group  |The resource gorup for the VM  | yes
|size  |The size of the VM  | yes
|region  |The Azure region for the VM  | yes
|subnet_id  |The ID of the Azure subnet where the VM will be deployed  | yes
|tags  |A map of tags to be associated with the instance  | no
|command  |Command(s) to be run on the instance after it is deployed  | no

# Outputs
The following outputs are exported
|**key** |**value**  |
|--|--|
|linux_mgmt_ip  |The public IP of the VM created  |
|linux_private_ip  |The private IP of the VM created   |

# Example

    module  "azure_linux1" {
      source  =  "github.com/astipkovits/terraform-azure-ubuntu"
      name =  "testvm1"
      admin_username = "admin"
      admin_password = "very_secret_password_123"
      resource_group =  "resource_group_1"
      size =  "Standard_B1ls"
      region = "East US"
      subnet_id = "1234abc"
      tags =  {
        app = "business-app1"
      }
      command =  "apt-get update && apt-get install -y apache2"
    }
