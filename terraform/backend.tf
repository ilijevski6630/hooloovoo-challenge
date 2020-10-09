terraform {
  backend "s3" {
    bucket = "terraform-hooloovoo-state"
    key = "global/s3//terraform.tfstate"
    region = "eu-west-1"
  }
}