resource "aws_instance" "mongodb" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0f9f0f43cbf1baaf8"]

  tags = {
    Name = "mongodb"
  }
  connection {
    type     = "ssh"
    user     = "ec2-user"
    password = "DevOps321"
    host     = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "pip3.11 install ansible",
      "ansible-pull -i localhost, -U https://github.com/mas123shaik/mas_roboshop_ansible roboshop.yml -e component_name=mongodb -e env=dev",
    ]
  }
}
resource "aws_route53_record" "mongodb" {
  zone_id = "Z02101962RY3FU3U9KSR5"
  name    = "mongodb-dev"
  type    = "A"
  ttl     = 10
  records = [aws_instance.frontend.private_ip]
}