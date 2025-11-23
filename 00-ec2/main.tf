resource "aws_instance" "instances" {
  
  count = length(var.services)

  ami = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-08c93f3c6fe640a6b"]

  tags = {
    Name= "${var.services[count.index]}-dev"
    services = var.services[count.index]
  }
}

resource "aws_route53_record" "instances" {
  count = length(var.services)
  zone_id = "Z05764853PUNNX41R0FK9"
  name = "${var.services[count.index]}-dev.kommanuthala.store"
  type = "A"
  ttl = 10
  records = [aws_instance.instances[count.index].public_ip]
}