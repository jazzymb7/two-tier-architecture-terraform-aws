resource "aws_db_subnet_group" "twotier_dbsubnetgroup" {
  name = var.db_subnet
  subnet_ids = [aws_subnet.twotierprivatesubnet_1.id,aws_subnet.twotierprivatesubnet_2.id]
}