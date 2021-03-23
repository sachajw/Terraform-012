resource "aws_instance" "db" {
    ami = "ami-0d50aa12878bdd456"
    instance_type = "t3.micro"

    tags = {
        Name = "DB Server"
    }
}

output "PrivateIP" {
    value = aws_instance.db.private_ip
}