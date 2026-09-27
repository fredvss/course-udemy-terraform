resource "aws_vpc" "vpc" {
  for_each = local.network_by_env

  cidr_block = each.value.vpc_cidr

  tags = {
    Name = "terraform-course-vpc-${each.key}"
  }
}

resource "aws_subnet" "subnet" {
  for_each = local.network_by_env

  vpc_id            = aws_vpc.vpc[each.key].id
  cidr_block        = each.value.subnet_cidr
  availability_zone = each.value.az

  tags = {
    Name = "terraform-course-subnet-${each.key}"
  }
}

resource "aws_internet_gateway" "igw" {
  for_each = local.network_by_env

  vpc_id = aws_vpc.vpc[each.key].id

  tags = {
    Name = "terraform-course-igw-${each.key}"
  }
}