resource "aws_instance" "module_web" {
  ami = var.ami
  instance_type = var.instance
  key_name = var.key
  vpc_security_group_ids = [aws_security_group.newsg2026.id]
  tags = {
    Name = var.name
  }  
}