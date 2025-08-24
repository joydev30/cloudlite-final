resource "aws_dynamodb_table" "sessions" {
  name         = "${var.project_name}-sessions-table"
  billing_mode = "PAY_PER_REQUEST" # This is key for the Free Tier
  hash_key     = "sessionId"

  attribute {
    name = "sessionId"
    type = "S" # S means the attribute is a String
  }

  tags = {
    Name = "${var.project_name}-dynamodb-table"
  }
}
