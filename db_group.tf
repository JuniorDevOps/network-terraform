resource "aws_db_subnet_group" "default" {
  name       = "rds-subnet-group"
  subnet_ids = ["${aws_subnet.private_rds_1.id}","${aws_subnet.private_rds_2.id}"]
}