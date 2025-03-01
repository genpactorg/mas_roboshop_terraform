variable "vpc_security_group_ids" {
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
  default = "Z02101962RY3FU3U9KSR5"
}
variable "env" {
  default = "dev"
}