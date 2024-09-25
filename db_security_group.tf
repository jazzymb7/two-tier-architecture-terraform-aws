resource "aws_security_group" "twotier_db_sg" {
  name        = var.db_sg_name
  description = "Allow tls for inbound traffic"
  vpc_id = aws_vpc.myvpc.id

  ingress {
    from_port        = 3306
    to_port          = 3306
    protocol         = "tcp"
    security_groups =  [aws_security_group.sg.id]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = var.db_sg_name
  }
}
