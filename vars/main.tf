provider "aws" {
    region = "af-south-1"
}

variable "number_of_servers" {
    type = number
}

resource "aws_instance" "ec2" {
    ami = "ami-0d50aa12878bdd456"
    instance_type = "t3.micro"
    count = var.number_of_servers
}