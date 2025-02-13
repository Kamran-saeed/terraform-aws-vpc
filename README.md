# terraform-aws-vpc

The repo contains code for creating vpc using terraform [official module for vpc](https://github.com/terraform-aws-modules/terraform-aws-vpc).

<!-- BEGIN_TF_DOCS -->

## Requirements

| Name | Version |
| ---- | ------- |
| aws  | >= 5.0  |

## Inputs

| Name            | Description                                          | Type           | Default | Required |
| --------------- | ---------------------------------------------------- | -------------- | ------- | :------: |
| azs             | List of Availability Zones                           | `list(string)` | n/a     |   yes    |
| cidr            | CIDR block for VPC.                                  | `string`       | n/a     |   yes    |
| env             | Environment name                                     | `string`       | n/a     |   yes    |
| private_subnets | List of private subnet CIDR ranges to create in VPC. | `list(string)` | n/a     |   yes    |
| public_subnets  | List of public subnet CIDR ranges to create in VPC.  | `list(string)` | n/a     |   yes    |
| service_name    | Service name                                         | `string`       | n/a     |   yes    |
| vpc_name        | VPC name                                             | `string`       | n/a     |   yes    |

## Outputs

| Name            | Description                                                                              |
| --------------- | ---------------------------------------------------------------------------------------- |
| cidr            | The network CIDR of VPC.                                                                 |
| default_sg_id   | Default Security Group ID.                                                               |
| id              | The identity of the VPC in which resources will be delpoyed.                             |
| private_subnets | A list of the identities of the private subnetworks in which resources will be deployed. |
| public_subnets  | A list of the identities of the public subnetworks in which resources will be deployed.  |

<!-- END_TF_DOCS -->
