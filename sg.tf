resource "aws_security_group" "allow_myip" {
  name        = "APP-Inbound-Rules"
  description = "Allow My IP inbound traffic"

  ingress {
    description = "Allow only My IP"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["80.208.218.141/32"]
  }

  ingress {
    description = "Expose Port 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Sympony_App_Inbound_Rules"
  }
}
