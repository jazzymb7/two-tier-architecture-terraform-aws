resource "aws_vpc" "twotiervpc" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = var.vpc_name
  }
}