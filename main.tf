module "ec2" {
  for_each = var.instances
  source = "./modules/ec2"
  ami_id = each.value["ami_id"]
  env    = var.env
  instance_type = each.value["instance_type"]
  name = each.key
  vpc_security_group_ids = var.vpc_security_group_ids
  zone_id = var.zone_id
}
/*resource "aws_instance" "instance" {
  for_each = var.instances
  ami           = each.value["ami_id"]
  instance_type = each.value["instance_type"]
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = each.key
  }
}
resource "aws_route53_record" "record" {
  for_each = var.instances
  zone_id = var.zone_id
  name    = "${each.key}-${var.env}"
  type    = "A"
  ttl     = 10
  records = [aws_instance.instance[each.key].private_ip]
}*/
/*resource "aws_route53_record" "catalogue" {
  zone_id = "Z02101962RY3FU3U9KSR5"
  name    = "catalogue-dev"
  type    = "A"
  ttl     = 10
  records = [aws_instance.catalogue.private_ip]
}
resource "null_resource" "catalogue" {
  provisioner "remote-exec" {
    connection {
      type     = "ssh"
      user     = "ec2-user"
      password = "DevOps321"
      host     = aws_instance.catalogue.private_ip
    }
    inline = [
      "sudo pip3.11 install ansible",
      "ansible-pull -i localhost, -U https://github.com/mas123shaik/mas_roboshop_ansible roboshop.yml -e component_name=catalogue -e env=dev",
    ]
  }
}*/