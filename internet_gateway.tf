resource "aws_internet_gateway" "twotierigw" {
  vpc_id = aws_vpc.twotiervpc.id

  tags = {
    Name = var.igw_name
  }
}