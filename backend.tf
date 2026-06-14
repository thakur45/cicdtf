terraform {
  backend "s3" {
    bucket = "my-terraform-state-max-cicdtf"
    key    = "terraform/state"
    region = "ap-south-1"
  }
}