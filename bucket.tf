resource "random_id" "bucket_suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "course_bucket" {
  bucket = "terraform-course-bucket-${random_id.bucket_suffix.hex}"

  tags = local.tags
}
