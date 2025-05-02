provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key 
  secret_key = var.aws_secret_key
  
}

resource "aws_instance" "web" {
  ami           = "ami-0f1dcc636b69a6438"  # Ubuntu Server 22.04 LTS in us-east-1
  instance_type = "t2.micro"

  user_data = <<-EOF
              #!/bin/bash
              sudo apt update
              sudo apt install -y apache2
              sudo systemctl start apache2
              sudo systemctl enable apache2
              echo "<h1>Deployed using Terraform from Windows</h1>" > /var/www/html/index.html
              EOF

  tags = {
    Name = "TerraformWebServer"
  }
}


resource "aws_dynamodb_table" "terraform_locks" {
  name         = "terraform-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}



terraform {
  backend "s3" {
    bucket = "my-bucket-backend.tf-gungun"
    key    = "path/to/my/key"
    region = "ap-south-1"
    dynamodb_table = "terraform-locks"      # 🔐 Enables state locking
    encrypt        = true
  }
}



