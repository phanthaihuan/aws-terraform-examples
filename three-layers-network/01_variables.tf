# General Deployment Variables
variable "aws_region" {
  type        = string
  description = "AWS region"
}

variable "aws_profile" {
  type        = string
  default     = "default"
  description = "AWS profile which used for terraform infra deployment"
}

variable "env" {
  type        = string
  description = "The environment of application"
}

variable "nickname" {
  type        = string
  description = "The nickname of application. Must be lowercase without special chars"
}

variable "tags" {
  type        = map(string)
  description = "The key value pairs we want to apply as tags to the resources contained in this module"
}

# Project Specific Variables
variable "vpc_cidr_block" {
  type        = string
  description = "The CIDR of VPC"
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "The list of CIDR of Private Subnet"
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "The list of CIDR of Public Subnet"
}
