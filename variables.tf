variable "region" {
  description = "region"
  type        = string
}
variable "project" {
  description = "project"
  type        = string
}
variable "environment" {
  description = "environment"
  type        = string
}

# vpc
variable "cidr" {
  description = "cidr"
  type        = string
}
variable "private_subnets" {
  description = "private_subnets"
  type        = list(string)
}

variable "public_subnets" {
  description = "public_subnets"
  type        = list(string)
}

variable "enable_nat_gateway" {
  description = "enable_nat_gateway"
  type        = bool
}
variable "single_nat_gateway" {
  description = "single_nat_gateway"
  type        = bool
}
variable "one_nat_gateway_per_az" {
  description = "one_nat_gateway_per_az"
  type        = bool
}