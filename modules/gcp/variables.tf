##################
#TFE
###################

variable "TFE_GCP_DEMOSTACK_WORKSPACE" {
  description = "The TFE workspace  to create the variables"
  default     = "Guy-GCP-Demostack"
}

variable "TFE_ORGANIZATION" {
  description = "The TFE Organization to create workspaces "
  default     = "emea-se-playground-2019"
}

#############
# URLs
################################################

variable "consul_url" {
  description = "The url to download Consul."
  default     = "https://releases.hashicorp.com/consul/1.2.2/consul_1.2.2_linux_amd64.zip"
}

variable "consul_ent_url" {
  description = "The url to download Consul."
  default     = "https://releases.hashicorp.com/consul/1.2.2/consul_1.2.2_linux_amd64.zip"
}


variable "fabio_url" {
  description = "The url download fabio."
  default     = "https://github.com/fabiolb/fabio/releases/download/v1.5.7/fabio-1.5.7-go1.9.2-linux_amd64"
}

variable "nomad_url" {
  description = "The url to download nomad."
  default     = "https://releases.hashicorp.com/nomad/0.8.4/nomad_0.8.4_linux_amd64.zip"
}

variable "nomad_ent_url" {
  description = "The url to download nomad."
  default     = "https://releases.hashicorp.com/nomad/0.8.4/nomad_0.8.4_linux_amd64.zip"
}

variable "vault_url" {
  description = "The url to download vault."
  default     = "https://releases.hashicorp.com/vault/0.11.1/vault_0.11.1_linux_amd64.zip"
}

variable "vault_ent_url" {
  description = "The url to download vault."
  default     = "https://s3-us-west-2.amazonaws.com/hc-enterprise-binaries/vault/ent/0.11.1/vault-enterprise_0.11.1%2Bent_linux_amd64.zip"
}


variable "cni_plugin_url" {
  description = "The url to download teh CNI plugin for nomad."
  default     = "https://github.com/containernetworking/plugins/releases/download/v0.8.2/cni-plugins-linux-amd64-v0.8.2.tgz"
}
####################################################################
# BASE
#####################

variable "owner" {
description = "IAM user responsible for lifecycle of cloud resources used for training"
default = ""
}

variable "TTL" {
description = "Hours after which resource expires, used by reaper. Do not use any unit. -1 is infinite."
default = "240"
}


variable "servers" {
  description = "The number of data servers (consul, nomad, etc)."
  default     = "3"
}

variable "workers" {
  description = "The number of nomad worker vms to create."
  default     = "3"
}



variable "enterprise" {
  description = "do you want to use the enterprise version of the binaries"
  default     = 1
}

variable "vaultlicense" {
  description = "Enterprise License for Vault"
  default     = ""
}

variable "consullicense" {
  description = "Enterprise License for Consul"
  default     = ""
}

variable "nomadlicense" {
  description = "Enterprise License for Nomad"
  default     = ""
}


variable "run_nomad_jobs"{
 default = "0" 
}

variable "primary_datacenter"{
  description = "the primary datacenter for mesh gateways"
  default = ""
}


###################
# GCP
###################


variable "gcp_project" {
  description = "The GCP projct name to be used"
  default     = "FILLINYOURPROJECTNAME"
}

variable "gcp_region" {
  description = "Region to deploy into"
  default     = "AddADeploymentRegion"
}

variable "GOOGLE_CREDENTIALS" {
  description = "Google Credentials in JSON format"
  default     = "ADD The JSON here"
}
