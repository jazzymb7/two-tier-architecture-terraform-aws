resource "aws_subnet" "twotierpubsubnet_1" {
  vpc_id = aws_vpc.twotiervpc.id
  cidr_block = var.pub_subnet_cidr_1
  availability_zone = var.pub_subnet1_az
  map_public_ip_on_launch = true
}

resource "aws_subnet" "twotierpubsubnet_2" {
  vpc_id = aws_vpc.twotiervpc.id
  cidr_block = var.pub_subnet_cidr_2
  availability_zone = var.pub_subnet2_az
  map_public_ip_on_launch = true
}