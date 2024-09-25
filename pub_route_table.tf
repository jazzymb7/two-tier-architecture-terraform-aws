resource "aws_route_table" "twotierrt" {
  vpc_id = aws_vpc.twotiervpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.twotierigw.id
  }

  tags = {
    Name = var.pub_rt_name
  }
}

resource "aws_route_table_association" "twotier_rta_1" {
  subnet_id = aws_subnet.twotierpubsubnet_1.id
  route_table_id = aws_route_table.twotierrt.id
}

resource "aws_route_table_association" "twotier_rta_2" {
  subnet_id = aws_subnet.twotierpubsubnet_2.id
  route_table_id = aws_route_table.twotierrt.id
}