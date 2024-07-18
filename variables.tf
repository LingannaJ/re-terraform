# ec2 instance variables

# variable "image_id" {
#  type = string
#  default = "ami-041e2ea9402c46c32"

# }

variable "instance_type" {
    type = string
    default = "t3.micro"
  
}

variable "instance_names" {
    type = list
    default = ["db", "backend", "frontend"]
  
}

variable "common_tags" {
    default = {
    project = "expense"
    environment = "dev"
    terraform = "true"

    }
}

# sg variables

variable "sg_name" {
    type = string
    default = "allow_ssh"
  
}

variable "sg_description" {
    type = string
    default = "allow_ssh"
  
}

variable "ssh_port" {
    default = 22
  
}

variable "protocal" {
    default = "tcp"
  
}

variable "allow_cidrs" {
    type = list
    default = ["0.0.0.0/0"]
  
}

# route53 variables

variable "zone_id" {
    type = string
    default = "Z0752932HHVY7XFGG8HE"
  
}

variable "domain_name" {
    default = "shivdev.online"
  
}