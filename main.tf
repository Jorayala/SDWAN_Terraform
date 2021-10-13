#configure provider with your cisco sdwan credentials.

terraform {
  required_providers {
    sdwan = {
      source = "CiscoDevNet/sdwan"
    }
  }
} 

provider "sdwan" {
  # cisco-sdwan user name
  username = "devnetuser"
  # cisco-sdwan password
  password = "RG!_Yw919_83"
  # cisco-sdwan url
  url      = "https://sandbox-sdwan-1.cisco.com"
  insecure = true
}

resource "sdwan_device_template" "test" {
  template_name = "example1"
  template_description = "For testing purpose"
  device_type = "vedge-cloud"
  device_role = "sdwan-edge"
  config_type = "file"
  factory_default = false
  template_configuration = "`"
}