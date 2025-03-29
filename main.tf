provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 5
ami = "ami-04aa00acb1165b32a"
instance_type = "t2.micro"
key_name = "shail-us-east-key-pair"
vpc_security_group_ids = ["sg-0bba6ba36ff0beec5"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["ansible", "dev-1", "dev-2", "test-1","test-2"]
}
