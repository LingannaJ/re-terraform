variable "instance_names" {
  type = map
  default = {
    db = "t3.small"
    backend = "t2.micro"
    frontend = "t2.micro"

  }
}

variable "common_tags" {
  type = map
  default = {
    project = "expense"
    terraform = "true"
    environment = "dev"

  }
}


# route53 variables

variable "zone_id" {
    type = string
    default = "Z0752932HHVY7XFGG8HE"
  
}

variable "domain_name" {
    default = "shivdev.online"
  
}