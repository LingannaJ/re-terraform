resource "aws_instance" "db" {
  count = length(var.instance_names) 
  ami              = data.aws_ami.ami_info.id
  instance_type    = var.instance_names[count.index] == "db" ? "t3.small" : "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_all.id]

tags = merge( 
    var.common_tags,{
   
   Name = var.instance_names[count.index]
   module = var.instance_names[count.index]

  }
)
}



resource "aws_security_group" "allow_all" {
  name        = var.sg_name
  description = var.sg_description

  tags = {
    Name = "allow_tls"
    createdBy = "vedhansh"
  }

  ingress {
    from_port        = var.ssh_port
    to_port          = var.ssh_port
    protocol         = var.protocal
    cidr_blocks      = var.allow_cidrs
    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    

    
  }
}