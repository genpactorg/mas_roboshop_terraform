resource "aws_instance" "frontend" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0f9f0f43cbf1baaf8"]

  tags = {
    Name = "frontend"
  }
}
resource "aws_route53_record" "frontend" {
  zone_id = "Z02101962RY3FU3U9KSR5"
  name    = "frontend-dev"
  type    = "A"
  ttl     = 10
  records = [aws_instance.frontend.private_ip]
}