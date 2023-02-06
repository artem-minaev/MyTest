variable "zone"{
  type = "string"
  default = "us-east-2"
}

variable "image_id"{
  type = "string"
  default = "$AMI" 
  description = "ubuntu18"
}

variable "inst_type"{
  type = "string"
  default = "t2.micro"
}
