resource "aws_db_instance" "app-db" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7.31"
  instance_class       = "db.t2.micro"
  identifier           = "app-db"
  name                 = "application"
  username             = "app"
  password             = "pRWSdwjkGeaYsxh3eM"
  parameter_group_name = "default.mysql5.7"
  final_snapshot_identifier = "foo"
  skip_final_snapshot  = "true"
}