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
  template_name = "CSS_LATAM_DT"
  template_description = "For testing purpose"
  device_type = "vedge-cloud"
  device_role = "sdwan-edge"
  config_type = "file"
  factory_default = false
  template_configuration = "`"
}

resource "sdwan_ntp_feature_template" "example_ntp_feature_template" {  
  template_name = "CSS_LATAM_FT"
  template_description = "For testing purposes"
  device_type = [    
    "vedge-1000",
        "vedge-2000",
        "vedge-cloud",
        "vedge-5000",
        ]    
  template_type = "ntp"
  template_min_version = "15.0.0"
   template_definition {   

    server {
      hostname = "198.00.200.100"     
      key = 1
      vpn = 0
      version = 4 
    }

    authentication {
      id = 1
      value = "12345"
    }

    trusted = [ "1"]
  }
  factory_default = false
}

