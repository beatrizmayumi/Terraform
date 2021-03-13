# https://www.terraform.io/docs/providers/azurerm/

provider "azurerm"{
    
	#skip_provider_registration = "true"
    version = "~>1.33"
}

#Add resource group
resource "azurerm_{type}" "{group}" {
    name     = "{resource group name}"
    location = "{location}"
}

#Add service plan
resource "azurerm_{type}" "{group}" {
  name                = "{service plan name}"
  location            = "{location}"
  resource_group_name = "{resource group name}"
  sku {
    tier = "{tier}"
    size = "{size}"
  }
}

#Add webapp
resource "azurerm_{type}" "{group}" {
  name                = "{app service name}"
  location            = "{location}"
  resource_group_name = "{resource group name}"
  app_service_plan_id = "{service plan name}"

  site_config {
    dotnet_framework_version = "{framework}"
    scm_type                 = "{souce control management}"
  }
}

#Add database server
resource "azurerm_sql_{type}" "{group}" {
  name                         = "{server name}"
  resource_group_name          = "{resource group name}"
  location                     = "{location}"
  version                      = "{version}"
  administrator_login          = "{login}"
  administrator_login_password = "{password}"
  tags = {
    environment = "production"
  }
}

#Add database
resource "azurerm_sql_{type}" "{group}" {
  name                = "{database name}"
  resource_group_name = "{resource group name}"
  location            = "{location}"
  server_name         = "{server name}"
  tags = {
    environment = "production"
  }
}

#Add database server firewall rules
resource "azurerm_sql_{type}" "{group}" {
  name                = "{firewall name}"
  resource_group_name = "{resource group name}"
  server_name         = "{server name}"
  start_ip_address    = "0.0.0.0"
  end_ip_address      = "0.0.0.0"

}