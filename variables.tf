##################################################################################
# VARIABLES
##################################################################################

variable "region" {
  type        = string
  description = "(Optional) AWS Region to use. Default is us-east-1."
  default     = "us-east-1"
}

variable "prefix" {
  type        = string
  description = "(Optional) Prefix to use for all resources in this module. Default is globo-dev."
}

variable "environment" {
  type        = string
  description = "(Optional) Environment name for all resources (e.g., dev, staging, prod)."
}

variable "billing_code" {
  type        = string
  description = "(Required) Billing code for network resources."
}

variable "cidr_block" {
  type        = string
  description = "(Optional) The CIDR block for the VPC. Default is 10.42.0.0/16."
}

variable "public_subnets" {
  type        = map(string)
  description = "(Optional) Map of public subnets to create with CIDR blocks. Keys will be used as subnet names with the prefix. Default includes public-1 and public-2."
  default = {
    public-1 = "10.42.10.0/24"
    public-2 = "10.42.11.0/24"
  }
}

