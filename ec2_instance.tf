# EC2 Instance Configuration

resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id = aws_subnet.main.id

  tags = {
    Name = "Environment: Dev"
  }
}
