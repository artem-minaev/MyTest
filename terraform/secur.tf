resource "aws_security_group" "web_server_test" {
  name        = "web_security_group"
  description = "Allow 80,8080,22 tcp"


  dynamic "ingress"{
    for_each = ["80","22","8080"]
    content{
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }

}
