variable "aws_access_key" {
 description = "Enter your AWS Access Key"
 type = string
 sensitive = true
}

variable "aws_secret_key" {
description = "Enter your AWS Secret Key"
type = string
sensitive = true
}

variable "aws_region" {
 description = "AWS Region"
 type = string
 default = "ap-south-1"
}


