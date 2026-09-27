resource "aws_vpc" "vpc_us_east_1" {
  provider = aws.us_east_1

  cidr_block = "10.40.0.0/16"

  tags = {
    Name = "terraform-course-vpc-us-east-1"
  }
}

resource "aws_subnet" "subnet_us_east_1" {
  provider = aws.us_east_1
  count    = 3

  vpc_id     = aws_vpc.vpc_us_east_1.id
  cidr_block = "10.40.${count.index}.0/24"

  depends_on = [aws_vpc.vpc_us_east_1]

  tags = {
    Name = "terraform-course-subnet-us-east-1"
  }
}

resource "aws_vpc" "vpc_sa_east_1" {
  provider = aws.sa_east_1

  cidr_block = "10.50.0.0/16"

  tags = {
    Name = "terraform-course-vpc-sa-east-1"
  }
}

resource "aws_subnet" "subnet_sa_east_1" {
  provider = aws.sa_east_1
  count    = 3

  vpc_id     = aws_vpc.vpc_sa_east_1.id
  cidr_block = "10.50.${count.index}.0/24"

  depends_on = [aws_vpc.vpc_sa_east_1]

  tags = {
    Name = "terraform-course-subnet-sa-east-1"
  }
}