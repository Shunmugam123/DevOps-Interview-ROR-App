resource "aws_s3_bucket" "terraform_state" {
  bucket        = var.bucket_name
  force_destroy = true
}

resource "aws_s3_bucket_versioning" "terraform_bucket_versioning" {
  bucket = aws_s3_bucket.terraform_state.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "terraform_state_crypto_conf" {
  bucket = aws_s3_bucket.terraform_state.bucket
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

output "vpc_id" {
  value = aws_vpc.main.id
}

resource "aws_subnet" "my-subnet1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "eu-central-1a"
}

resource "aws_subnet" "my-subnet2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "eu-central-1b"
}

resource "aws_security_group" "rds" {
  name        = "rds_security_group"
  description = "Allow traffic to RDS instance"
  vpc_id      = aws_vpc.main.id
}

resource "aws_db_subnet_group" "my-subnet-group" {
  name        = "my-subnet-group"
  description = "My Subnet Group"
  subnet_ids  = [aws_subnet.my-subnet1.id, aws_subnet.my-subnet2.id]
}

resource "aws_db_instance" "default" {
  allocated_storage      = 20
  storage_type           = "gp2"
  engine                 = "postgres"
  engine_version         = "13.7"
  instance_class         = "db.t3.micro"
  name                   = var.table_name
  username               = "myuser"
  password               = "mypassword"
  skip_final_snapshot    = true
  vpc_security_group_ids = [aws_security_group.rds.id]
  db_subnet_group_name   = "my-subnet-group"
}
