provider "aws" {
    region = "eu-west-2"
}

resource "aws_instance" "ec2" {
    ami = "ami-0d50aa12878bdd456"
    instance_type = "t3.micro"
    count = 3
}