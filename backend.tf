terraform {
  backend "s3" {
    bucket = "terraformtest-backend"
    key    = "terraform.tfstate"
    region = "us-east-1"

    use_lockfile = true
    encrypt      = true
  }
}
