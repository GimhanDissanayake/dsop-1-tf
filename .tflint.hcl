rule "aws_resource_missing_tags" {
  enabled = true
  tags = [
    "environment",
    "project"
  ]
}

plugin "aws" {
    enabled = true
    version = "0.27.0"
    source  = "github.com/terraform-linters/tflint-ruleset-aws"
    deep_check = true
}

# ref: https://github.com/terraform-linters/tflint-ruleset-terraform/tree/main/docs/rules
rule "terraform_deprecated_index" {
    enabled = true        # Checks for deprecated syntax
}

rule "terraform_unused_declarations" {
    enabled = true        # Finds unused variables and locals
}

rule "terraform_comment_syntax" {
    enabled = true        # Enforces proper comment syntax
}

rule "terraform_documented_outputs" {
    enabled = true        # Ensures outputs are documented
}

rule "terraform_documented_variables" {
    enabled = true        # Ensures variables are documented
}

rule "terraform_typed_variables" {
    enabled = true        # Ensures variables have type constraints
}

rule "terraform_naming_convention" {
    enabled = true        # Enforces naming conventions
}

rule "terraform_required_version" {
    enabled = true        # Ensures terraform version is specified
}