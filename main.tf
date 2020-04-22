provider "aws" {
  region  = "us-east-2"
}


resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "ExternallyManagedTable"
  billing_mode   = "PROVISIONED"
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "UserId"
  range_key      = "GameTitle"

  attribute {
    name = "UserId"
    type = "S"
  }

  attribute {
    name = "Name"
    type = "S"
  }

  attribute {
    name = "Team"
    type = "N"
  }

}