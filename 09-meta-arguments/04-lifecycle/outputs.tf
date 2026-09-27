output "replaceable_bucket_name" {
  value       = aws_s3_bucket.replaceable_bucket.bucket
  description = "Nome do bucket com create_before_destroy."
}

output "protected_bucket_name" {
  value       = aws_s3_bucket.protected_bucket.bucket
  description = "Nome do bucket com prevent_destroy."
}