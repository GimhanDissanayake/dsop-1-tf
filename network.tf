# vpc
module "vpc" {
  # source  = "terraform-aws-modules/vpc/aws"
  # version = "5.19.0"
  source = "git::https://github.com/terraform-aws-modules/terraform-aws-vpc.git?ref=961c9b51e3ed3959d9419f019e7085c087bf7297" # commit hash of version 5.19.0"



  name = "${local.name}-vpc"
  cidr = var.cidr

  azs             = local.azs
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  enable_nat_gateway     = var.enable_nat_gateway
  single_nat_gateway     = var.single_nat_gateway
  one_nat_gateway_per_az = var.one_nat_gateway_per_az

  # Manage default security group
  manage_default_security_group  = true
  default_security_group_name    = "${local.name}-default"
  default_security_group_ingress = []
  default_security_group_egress  = []

  tags = local.tags
}

# # Ensure the default security group of every VPC restricts all traffic
# resource "aws_default_security_group" "default" {
#   vpc_id = module.vpc.vpc_id

#   # ingress {
#   #   protocol  = "-1"
#   #   self      = true
#   #   from_port = 0
#   #   to_port   = 0
#   # }
#   # egress {
#   #   from_port   = 0
#   #   to_port     = 0
#   #   protocol    = "-1"
#   #   cidr_blocks = ["0.0.0.0/0"]
#   # }
# }