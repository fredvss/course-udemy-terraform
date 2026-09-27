moved {
  from = aws_s3_bucket.course_bucket_1
  to   = aws_s3_bucket.course_bucket_um
}

moved {
  from = random_id.bucket_suffix_1
  to   = random_id.bucket_suffix_um
}