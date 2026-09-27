# renamed from _1 to _um to use terraform state command
# terraform state mv random_id.bucket_suffix_1 random_id.bucket_suffix_um
resource "random_id" "bucket_suffix_um" {
  byte_length = 4
}

resource "random_id" "bucket_suffix_2" {
  byte_length = 4
}

resource "random_id" "bucket_suffix_3" {
  byte_length = 4
}

# renamed from _1 to _um to use terraform state command
# terraform state mv aws_s3_bucket.course_bucket_1 aws_s3_bucket.course_bucket_um
resource "aws_s3_bucket" "course_bucket_um" {
  bucket = "terraform-course-bucket-${random_id.bucket_suffix_um.hex}"

  tags = local.tags
}

resource "aws_s3_bucket" "course_bucket_2" {
  bucket = "terraform-course-bucket-${random_id.bucket_suffix_2.hex}"

  tags = local.tags
}

resource "aws_s3_bucket" "course_bucket_3" {
  bucket = "terraform-course-bucket-${random_id.bucket_suffix_3.hex}"

  tags = local.tags
}
