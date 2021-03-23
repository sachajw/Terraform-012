variable "ec2name" {
    type = string
}

resource "aws_instance" "ec2" {
    ami = "ami-0d50aa12878bdd456"
    instance_type = "t3.micro"
    tags = {
        Name = var.ec2name
    }
}

output "instance_id" {
    value = aws_instance.ec2.id
}