provider "aws" {
  region = "us-east-1"
  #  access_key = ""
  #  secret_key = ""
}

resource "aws_instance" "intro" {
  ami                    = "ami-0453ec754f44f9a4a"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1a"
  key_name               = "dove-key"
  vpc_security_group_ids = ["sg-08ade7f21de84f45d"]
  tags = {
    Name    = "Dove-Instance"
    Project = "Dove"
  }
}