resource "aws_docdb_cluster" "app_db" {
  cluster_identifier = "app-db-cluster"
  engine             = "docdb"
  master_username    = "dbadmin"
  master_password    = "Aa123456!"
  skip_final_snapshot = true

  db_subnet_group_name = aws_docdb_subnet_group.db_subnet.name
}

resource "aws_docdb_subnet_group" "db_subnet" {
  name       = "docdb-subnet"
  subnet_ids = [aws_subnet.app_subnet.id]
}
