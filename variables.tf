variable "db_instances" {}
variable "zone_id" {}
variable "env" {}
variable "vpc_security_group_ids" {}
variable "vault_token" {}
variable "eks" {}
/*variable "vpc_security_group_ids" {
  default = ["sg-0740e8c441e48cb53"]
}
variable "instances" {
  default = {
    catalogue = {
      ami_id = "ami-09c813fb71547fc4f"
      instance_type = "t3.small"
    }
    frontend = {
      ami_id = "ami-09c813fb71547fc4f"
      instance_type = "t3.small"
    }
    mongodb = {
      ami_id = "ami-09c813fb71547fc4f"
      instance_type = "t3.small"
    }
  }
}
variable "zone_id" {
  default = "Z06398542K2UFV583KXS5"
}
variable "env" {
  default = "dev"
}*/