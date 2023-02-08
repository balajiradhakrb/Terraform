resource "aws_instance" "my-instance" {
  ami                    = var.AMIS[var.region]
  instance_type          = var.instance_type
  availability_zone      = var.zone1
  key_name               = "terraform-key"
  vpc_security_group_ids = ["sg-05b8da38930f49227"]
  tags = {
    Name = "terraform instance"
  }
}