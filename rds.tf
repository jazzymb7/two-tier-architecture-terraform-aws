resource "aws_db_instance" "twotier_rds" {
  allocated_storage = 10
  db_name = "test_twotier_db"
  engine = "mysql"
  engine_version = "5.7"
  instance_class = "db.t3.micro"
  username = var.db_username
  password = var.db_password
  parameter_group_name = "default.mysql5.7"
  db_subnet_group_name = aws_db_subnet_group.twotier_dbsubnetgroup.id
  vpc_security_group_ids = []
  skip_final_snapshot = true

}