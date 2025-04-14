# dsop-1-tf
Infra provisioning using Terraform for dsop-1

# How to run
```
# export access keys to authenticate(To be automated using CICD tool)
export AWS_ACCESS_KEY_ID="xxxxxxxxxxxxxxxxxx"
export AWS_SECRET_ACCESS_KEY="xxxxxxxxxxxxxxxxxxxxx"
export AWS_SESSION_TOKEN="xxxxxxxxxxxxxxxxxxxxxxxxxxx"

# initiate 
terraform init

# select workspace
terraform workspace select dev

terraform plan -var-file="tfvars/dev.tfvars"
terraform apply -var-file="tfvars/dev.tfvars"


```
## pre-commit hooks
```
# few things to check:
1. Make sure you have Terraform files ( .tf extension) in your repository
2. Ensure the files are staged for commit
3. r  Verify your pre-commit configuration includes both formatting and validation hooks

# Running the Pre-Commit Hook
pre-commit run -a

# To initialize these hooks after updating the configuration, run:
pre-commit install

```


#### Table of Contents
1. [Usage](#usage)
2. [Requirements](#requirements)
3. [Providers](#Providers)
4. [Inputs](#inputs)
5. [Outputs](#outputs)

## Usage
*various commands

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.94.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.94.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_vpc"></a> [vpc](#module\_vpc) | git::https://github.com/terraform-aws-modules/terraform-aws-vpc.git | 961c9b51e3ed3959d9419f019e7085c087bf7297 |

## Resources

| Name | Type |
|------|------|
| [aws_availability_zones.available](https://registry.terraform.io/providers/hashicorp/aws/5.94.1/docs/data-sources/availability_zones) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr"></a> [cidr](#input\_cidr) | cidr | `string` | n/a | yes |
| <a name="input_enable_nat_gateway"></a> [enable\_nat\_gateway](#input\_enable\_nat\_gateway) | enable\_nat\_gateway | `bool` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | environment | `string` | n/a | yes |
| <a name="input_one_nat_gateway_per_az"></a> [one\_nat\_gateway\_per\_az](#input\_one\_nat\_gateway\_per\_az) | one\_nat\_gateway\_per\_az | `bool` | n/a | yes |
| <a name="input_private_subnets"></a> [private\_subnets](#input\_private\_subnets) | private\_subnets | `list(string)` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | project | `string` | n/a | yes |
| <a name="input_public_subnets"></a> [public\_subnets](#input\_public\_subnets) | public\_subnets | `list(string)` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | region | `string` | n/a | yes |
| <a name="input_single_nat_gateway"></a> [single\_nat\_gateway](#input\_single\_nat\_gateway) | single\_nat\_gateway | `bool` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->