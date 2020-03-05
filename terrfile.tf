# Terraform
# Build web sever

provider "aws" {
    region = "us-east-2"
   
}

resource "aws_instance" "web_server_test" {
  ami = "ami-0998bf58313ab53da" # aws
  instance_type = "t2.micro"
  key_name = "MyKeyPair"
  
  tags =  {
    Name = "AWS server"
    Owner = "Artem Minaev"
    Project = "Terraform test"
  }
}



output "instance_ips" {
value = "${aws_instance.web_server_test.public_ip}"
}