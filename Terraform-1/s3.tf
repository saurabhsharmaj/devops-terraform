resource "aws_s3_bucket" "example" {
  bucket = "my-bucket-backend.tf-gungun"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}



