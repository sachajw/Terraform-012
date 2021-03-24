provider "aws" {
  region = "af-south-1"
}

resource "aws_instance" "db" {
  ami           = "ami-0d50aa12878bdd456"
  instance_type = "t3.micro"
}

resource "aws_instance" "web" {
  ami           = "ami-0d50aa12878bdd456"
  instance_type = "t3.micro"

  depends_on = [aws_instance.db]
}

data "aws_instance" "dbsearch" {
  filter {
    name   = "tag:Name"
    values = ["DB Server"]
  }
}

output "dbservers" {
  value = data.aws_instance.dbsearch.availability_zone
}