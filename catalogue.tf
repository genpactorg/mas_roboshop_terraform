resource "aws_instance" "catalogue" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0f9f0f43cbf1baaf8"]

  tags = {
    Name = "catalogue"
  }
}
resource "aws_route53_record" "catalogue" {
  zone_id = "Z02101962RY3FU3U9KSR5"
  name    = "catalogue-dev"
  type    = "A"
  ttl     = 10
  records = [aws_instance.frontend.private_ip]
}