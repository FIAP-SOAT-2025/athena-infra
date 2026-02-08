resource "aws_s3_bucket" "lambda_code" {
  bucket = "lambda-code-tc3-g38-v1"
  tags = {
    Name = "Store lambda"
  }
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "terraform-state-tc5-g192-athena-v1"
  tags = {
    Name = "Terraform Infra Directory"
  }
}

