resource "aws_subnet" "twotierprivatesubnet_1" {
  vpc_id = aws_vpc.twotiervpc.id
  cidr_block = var.private_subnet_cidr_1
  availability_zone = var.private_subnet1_az
  map_public_ip_on_launch = true
}

resource "aws_subnet" "twotierprivatesubnet_2" {
  vpc_id = aws_vpc.twotiervpc.id
  cidr_block = var.private_subnet_cidr_2
  availability_zone = var.private_subnet2_az
  map_public_ip_on_launch = true
}