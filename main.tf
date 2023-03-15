resource "aws_instance" "my-instance" {
  ami                    = var.AMIS[var.region]
  instance_type          = var.instance_type
  availability_zone      = var.zone1
  key_name               = "jenkins-key"
  vpc_security_group_ids = ["sg-086febac7a5fc028f"]
  user_data              = filebase64("installhttpd.sh")
  tags = {
    Name = "terraform instance"
  }
}
