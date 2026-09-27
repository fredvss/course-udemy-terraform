resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "terraform-course-vpc"
  }
}

resource "aws_subnet" "subnet" {
  count = 3

  vpc_id     = aws_vpc.vpc.id
  cidr_block = "10.0.${count.index}.0/24"

  depends_on = [aws_vpc.vpc]

  tags = {
    Name = "terraform-course-subnet"
  }
}





