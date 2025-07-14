
variable "region" {
  type        = string
  description = "(Optional) AWS Region to deploy in. Defaults to us-west-2."
  default     = "us-west-2"
}

variable "prefix" {
  type        = string
  description = "(Required) Prefix to use for all resources in this module."
}

variable "environment" {
  type        = string
  description = "(Required) Environment of all resources"
}

variable "billing_code" {
  type        = string
  description = "(Required) Billing code for network resources"
}

# Application variables

variable "instance_type" {
  type        = string
  description = "(Optional) EC2 Instance type to use for web app. Defaults to t3.micro."
  default     = "t3.micro"
}

variable "api_key_secret_id" {
  type        = string
  description = "(Required) Secret ID for the API key for web app to talk to SaaS platform."
}

variable "ec2_role_name" {
  type        = string
  description = "(Required) Role Name for EC2 instance profile"
}

variable "playbook_repository" {
  type        = string
  description = "(Rquired) URI of Ansible playbook."
}

variable "tfe_organization" {
  type        = string
  description = "(Required) Name of TFC organization."
}

variable "tfe_workspace_name" {
  type        = string
  description = "(Required) Name of networking workspace to get information."
}