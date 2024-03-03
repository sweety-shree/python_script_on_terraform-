# Creating EC2 Instance
resource "aws_instance" "python" {
  ami                         = "ami-0208423bef18c17d1"
  instance_type               = "t3.micro"
  key_name                    = "Mk"
  vpc_security_group_ids      = [aws_security_group.sg.id]
  subnet_id                   = aws_subnet.subnet-1.id
  associate_public_ip_address = true
  user_data                   = file("data.sh")

  tags = {
    Name = "terraform"
  }
}
