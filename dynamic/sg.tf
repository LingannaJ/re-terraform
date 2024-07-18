resource "aws_security_group" "allow_ports" {
  name        = "allow_ports"
  description = "allowing some ports 22, 80.8080,3306 access"


 # below unna danni terraform oka block laga thiskuntundhi
 dynamic  "ingress" {
    for_each = var.inbound_rules
    content {
    from_port        = ingress.value["port"] ## each.value and [only <key-name> ivvali]
    to_port          = ingress.value["port"]
    protocol         = ingress.value["protocol"]
    cidr_blocks      = ingress.value["allow_cidrs"]
    
  }

 }
    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
     
  }
    tags = {
    Name = "allow_tls"
    createdBy = "vedhansh"
  }

  }
