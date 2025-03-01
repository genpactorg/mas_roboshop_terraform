variable "ami_id" {
  default = "ami-09c813fb71547fc4f"
}
variable "instance_type" {
  default = "t3.small"
}
variable "vpc_security_group_ids" {
  default = ["sg-0740e8c441e48cb53"]
}
variable "instances" {
  default = {
    catalogue = null
    frontend = null
    mongodb = null
  }
}
variable "zone_id" {
  default = "Z02101962RY3FU3U9KSR5"
}
variable "env" {
  default = "dev"
}