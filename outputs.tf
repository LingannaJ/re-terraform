output "instance_info" {
    value = aws_instance.db
  
}

output "aws_ami_linga" {
  value = data.aws_ami.ami_info.id
}

