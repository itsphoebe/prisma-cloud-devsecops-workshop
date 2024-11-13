provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "37454b26-6230-4bd7-a093-93705358ea4f"
    git_commit           = "b7413c5d072c00b1ee9e965594dbf47c123e0048"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-11-13 17:19:43"
    git_last_modified_by = "pholee.725@gmail.com"
    git_modifiers        = "pholee.725"
    git_org              = "itsphoebe"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
