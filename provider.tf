# Configure the OpenStack Provider
terraform {
  required_providers {
    openstack = {
      source = "terraform-provider-openstack/openstack"
      version = "1.32.0"
    }
  }
}
variable "openstack_auth_url" {
  default = "http://9.11.93.4:5000"
}

variable "openstack_project_id" {
  default = "37dbf4e564484d9598160442bd994758"
}

variable "openstack_project_name" {
  default = "admin"
}
variable "openstack_password" {
  default = "xMvLAtOwFyGnwVoT3V96mRZsxaMyxNE8HVQ4G8CJ"
}

provider "openstack" {
    auth_url  = var.openstack_auth_url
  project_id = var.openstack_project_id
  project_name = var.openstack_project_name
  username  = "admin"
  password  = var.openstack_password
  # Autres configurations du fournisseur OpenStack...
}