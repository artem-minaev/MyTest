output "instance_ips" {
value = "${aws_instance.web_server_test.public_ip}"
}
