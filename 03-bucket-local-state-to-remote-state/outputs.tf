output "bucket_id" {
  value       = aws_s3_bucket.bucket.id
  description = "The ID of the S3 bucket created for the course."
}