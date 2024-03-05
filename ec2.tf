# Creating EC2 Instance
resource "aws_instance" "python" {
  ami                         = "ami-013898da85dead62b"
  instance_type               = "t2.micro"
  key_name                    = "MK1"
  vpc_security_group_ids      = [aws_security_group.sg.id]
  subnet_id                   = aws_subnet.subnet-1.id
  associate_public_ip_address = true
  user_data                   = file("data.sh")

  tags = {
    Name = "terraform"
  }
}
