terraform {
  source = "git::https://github.com/Omqarrr/aws-vpc-network-terraform.git//modules/vpc?ref=v1.0.0"
}

inputs = {
  region_name = "us-east-2" #mumbai-region
  public_az   = ["us-east-2a", "us-east-2b"]
  private_az  = ["us-east-2a", "us-east-2b"]

  environment = "Staging"
}

include "root" {
  path = find_in_parent_folders()
}