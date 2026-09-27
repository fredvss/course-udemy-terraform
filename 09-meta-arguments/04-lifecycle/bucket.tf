resource "random_id" "replaceable_suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "replaceable_bucket" {
  bucket = "terraform-course-replaceable-${random_id.replaceable_suffix.hex}"

  lifecycle {
    create_before_destroy = true
  }

  tags = local.tags
}

resource "random_id" "protected_suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "protected_bucket" {
  bucket = "terraform-course-protected-${random_id.protected_suffix.hex}"

  lifecycle {
    prevent_destroy = true
  }

  tags = local.tags
}