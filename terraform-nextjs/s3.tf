resource "aws_s3_bucket" "nextjs_bucket" {
  bucket = "hs-my-terraform-web-host"

  tags = {
    Name        = "Next.js Website Bucket"
    Environment = "Production"
  }
}

resource "aws_s3_bucket_website_configuration" "nextjs_website" {
  bucket = aws_s3_bucket.nextjs_bucket.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "index.html"
  }
}

