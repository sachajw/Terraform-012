variable "server_names" {
    type = list(string)
}

resource "aws_instance" "db" {
    ami = "ami-0d50aa12878bdd456"
    instance_type = "t3.micro"
    count = length(var.server_names)
    tags = {
        Name = var.server_names[count.index]
    }
}

output "PrivateIP" {
    value = [aws_instance.db.*.private_ip]
}