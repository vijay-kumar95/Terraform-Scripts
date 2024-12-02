variable "REGION" {
  default = "us-east-1"
}

variable "ZONES" {
  default = "us-east-1a"
}

variable "AMIS" {
  type = map(any)
  default = {
    us-east-1 = "ami-0453ec754f44f9a4a"
    us-east-2 = "ami-0c80e2b6ccb9ad6d1"
  }
}