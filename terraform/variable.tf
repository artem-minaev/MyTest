variable "zone"{
  type = "string"
  default = "us-east-2"
}

variable "image_id"{
  type = "string"
  default = "ami-0fc20dd1da406780b" 
  description = "ubuntu18"
}

variable "inst_type"{
  type = "string"
  default = "t2.micro"
}
