provider "aws" {
    region = "${var.zone}"
}

resource "aws_instance" "web_server_test" {
  ami = "${var.image_id}"
  instance_type = "${var.inst_type}"
  key_name = "MyKeyPair"
  vpc_security_group_ids = [aws_security_group.web_server_test.id]
  user_data = file("bash.sh")

  tags =  {
    Name = "AWS server"
    Owner = "Artem Minaev"
    Project = "Terraform deploy"
  }
}
