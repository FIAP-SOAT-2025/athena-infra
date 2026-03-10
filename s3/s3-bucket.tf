resource "aws_s3_bucket" "lambda_code" {
  bucket = var.lambda_code_bucket
  tags = {
    Name = "Store lambda"
  }
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = var.tf_state_bucket
  tags = {
    Name = "Terraform Infra Directory"
  }
}

resource "aws_s3_bucket" "videos-directory" {
  bucket = var.videos_bucket_name
  tags = {
    Name = "Terraform Videos Directory"
  }
}

variable "lambda_code_bucket" {
  description = "S3 bucket name used to store Lambda code artifacts"
  default     = "lambda-code-tc5-g192-v1"
}

variable "tf_state_bucket" {
  description = "S3 bucket name used for Terraform state"
  default     = "terraform-state-tc5-g192-athena-v1"
}

variable "videos_bucket_name" {
  description = "S3 bucket name used to store videos"
  default     = "athena-videos-tc5-g192-v1"
}
