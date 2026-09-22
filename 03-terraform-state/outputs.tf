output "bucket_id" {
  value       = aws_s3_bucket.course_bucket.id
  description = "The ID of the S3 bucket created for the course."
}

output "bucket_arn" {
  value       = aws_s3_bucket.course_bucket.arn
  description = "The ARN of the S3 bucket created for the course."
}