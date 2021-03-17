provider "aws" {
  region = "af-south-1"
}

resource "aws_instance" "ec2" {
  ami           = "ami-0d50aa12878bdd456"
  instance_type = "t3.micro"

  tags = {
    Name = "potjiekos"
  }
}