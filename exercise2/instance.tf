resource "aws_instance" "web" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONES
  key_name               = "dove-key"
  vpc_security_group_ids = ["sg-08ade7f21de84f45d"]
  tags = {
    Name    = "Web-Instance"
    Project = "Web-server"
  }
}