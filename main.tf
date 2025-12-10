provider "aws" {
  region = "eu-central-1"
}

resource "aws_s3_bucket" "static" {
  bucket = "serap-static-website-demo"
  acl    = "public-read"
}

resource "aws_s3_bucket_website_configuration" "website" {
  bucket = aws_s3_bucket.static.id

  index_document {
    suffix = "index.html"
  }
}
