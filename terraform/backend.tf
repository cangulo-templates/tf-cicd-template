terraform {
  backend "s3" {
    bucket = "cangulo-templates-tfm-states"
    # key            = # will be set by GH workflow in tf init -backend-config variable
    region  = "eu-west-1"
    encrypt = "true"
  }
}
