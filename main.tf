data "aws_availability_zones" "available" {}

locals {
  name = "${var.environment}-${var.project}"

  azs = slice(data.aws_availability_zones.available.names, 0, 3)

  tags = {
    environment = var.environment
    project     = var.project
    Terraform   = "true"
    GithubRepo  = "example"
    GithubOrg   = "example"
  }
}
