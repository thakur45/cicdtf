resource "aws_instance" "web" {
  ami                    = "ami-01a00762f46d584a1"
  instance_type          = "t2.micro"
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]

  tags = {
    Name = "terraform-demo-1"
  }
}

