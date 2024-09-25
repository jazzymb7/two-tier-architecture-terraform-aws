resource "aws_security_group" "twotier_sg" {
    name = var.sg_name
    description = "Allow tls inbound traffic"
    vpc_id = aws_vpc.twotiervpc.id

    ingress {
        description = "SSH from VPC"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        security_groups = [aws_security_group.twotier_lb_sg.id]
    }

    ingress {
        description = "HTTP from VPC"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        security_groups = [aws_security_group.twotier_lb_sg.id]
    }

    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    description      = "Rule to allow connections to database from any instances this security group is attached to"
    from_port        = 3306
    to_port          = 3306
    protocol         = "tcp"
    security_groups  = [aws_security_group.twotier_db_sg.id]
    self             = false
  }

  tags = {
    Name = "allow_tls"
  }
}