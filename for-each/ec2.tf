resource "aws_instance" "expense" {
  for_each = var.instance_names
  ami              = data.aws_ami.ami_info.id
  instance_type    = each.value
  vpc_security_group_ids = ["sg-03b3b97b9c1d67a1d"] 

tags = merge( 
    var.common_tags,
    {

   Name = each.key
   module = each.key

  }
)
}