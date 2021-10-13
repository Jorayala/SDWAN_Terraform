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
  username = "admin"
  # cisco-sdwan password
  password = "C1sco12345"
  # cisco-sdwan url
  url      = "https://64.100.13.126:8443"
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
