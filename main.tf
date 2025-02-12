module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 5.19"

  name                               = var.vpc_name
  cidr                               = var.cidr
  azs                                = var.azs
  private_subnets                    = var.private_subnets
  public_subnets                     = var.public_subnets
  single_nat_gateway                 = true
  map_public_ip_on_launch            = true
  enable_nat_gateway                 = true
  enable_dns_hostnames               = true
  enable_dns_support                 = true

  # #########################################
  # Default Security Group
  # #########################################

  # Should be true to adopt and manage default security group
  manage_default_security_group = true

  # List of maps of ingress rules to set on the default security group
  # no allow entry means everything is denied
  default_security_group_ingress = []

  # List of maps of egress rules to set on the default security group
  default_security_group_egress = []

  #################################################
  # Tags
  #################################################
  default_security_group_tags = {
    Name = "${var.vpc_name}-default-sg"
  }
  default_network_acl_tags = {
    Name = "${var.vpc_name}-default-network-acl"
  }
  default_route_table_tags = {
    Name = "${var.vpc_name}-default-rt"
  }
  igw_tags = {
    Name = "${var.vpc_name}-igw"
  }
  nat_eip_tags = {
    Name = "${var.vpc_name}-nat-eip"
  }
  nat_gateway_tags = {
    Name = "${var.vpc_name}-natgw"
  }
  intra_route_table_tags = {
    Name = "${var.vpc_name}-rtb-intra"
  }
  private_route_table_tags = {
    Name = "${var.vpc_name}-rtb-private"
  }
  public_route_table_tags = {
    Name = "${var.vpc_name}-rtb-public"
  }
  vpc_tags = {
    Name        = var.vpc_name
    description = "VPC for ${var.service_name} ${var.env} environment"
  }
}
