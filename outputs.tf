output "id" {
  value = module.vpc.vpc_id

  description = "The identity of the VPC in which resources will be delpoyed."
}

output "cidr" {
  value = module.vpc.vpc_cidr_block

  description = "The network CIDR of VPC."
}

output "private_subnets" {
  value = module.vpc.private_subnets

  description = "A list of the identities of the private subnetworks in which resources will be deployed."
}

output "public_subnets" {
  value = module.vpc.public_subnets

  description = "A list of the identities of the public subnetworks in which resources will be deployed."
}

output "private_rt_ids" {
  value = module.vpc.private_route_table_ids

  description = "A list of the identities of the private route tables."
}

output "default_sg_id" {
  value       = module.vpc.default_security_group_id
  description = "Default Security Group ID."
}
