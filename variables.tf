variable "service_name" {
  type        = string
  description = "Service name"
}

variable "env" {
  type        = string
  description = "Environment name"
}

variable "vpc_name" {
  type        = string
  description = "VPC name"
}

variable "cidr" {
  type        = string
  description = "CIDR block for VPC."
}

variable "private_subnets" {
  type        = list(string)
  description = "List of private subnet CIDR ranges to create in VPC."
}

variable "public_subnets" {
  type        = list(string)
  description = "List of public subnet CIDR ranges to create in VPC."
}

variable "azs" {
  type        = list(string)
  description = "List of Availability Zones"
}
