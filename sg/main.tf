provider "aws" {
    region = "af-south-1"
}

resource "aws_instance" "ec2" {
    ami = "ami-0d50aa12878bdd456"
    instance_type = "t3.micro"
    security_groups = [aws_security_group.webtraffic.name]

      tags = {
    Name = "potjiekos"
  }

}

resource "aws_security_group" "webtraffic" {
    name = "Allow HTTPS"

    ingress {
        from_port = 443
        to_port = 443
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 443
        to_port = 443
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
}