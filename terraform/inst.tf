provider "aws" {
    region = "us-east-2"
}

resource "aws_instance" "web_server_test" {
  ami = "ami-0fc20dd1da406780b" # ubuntu18
  instance_type = "t2.micro"
  key_name = "MyKeyPair"
  vpc_security_group_ids = [aws_security_group.web_server_test.id]
  user_data = file("bash.sh")

  tags =  {
    Name = "AWS server"
    Owner = "Artem Minaev"
    Project = "Terraform deploy"
  }
}

output "instance_ips" {
value = "${aws_instance.web_server_test.public_ip}"
}
