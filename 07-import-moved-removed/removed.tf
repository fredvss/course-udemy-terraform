removed {
    from = aws_s3_bucket.course_bucket_3
    lifecycle {
        destroy = false
    }
}