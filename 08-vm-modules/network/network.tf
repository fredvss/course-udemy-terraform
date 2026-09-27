resource "aws_vpc" "vpc" {
  cidr_block = var.cidr_vpc

  tags = merge(var.tags, {
    Name = "terraform-course-vpc"
  })
}

resource "aws_subnet" "subnet" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.cidr_subnet

  tags = merge(var.tags, {
    Name = "terraform-course-subnet"
  })
}

resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws_vpc.vpc.id

  tags = merge(var.tags, {
    Name = "terraform-course-internet-gateway"
  })
}

resource "aws_route_table" "route_table" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet_gateway.id
  }

  tags = merge(var.tags, {
    Name = "terraform-course-route-table"
  })
}

resource "aws_route_table_association" "route_table_association" {
  subnet_id      = aws_subnet.subnet.id
  route_table_id = aws_route_table.route_table.id
}

# curl -s https://ifconfig.me
# curl -s https://api.ipify.org
variable "my_public_ip" {
  description = "Seu IP público para permitir SSH apenas da sua máquina."
  type        = string
  default     = "179.209.140.32/32"
}

resource "aws_security_group" "security_group" {
  name        = "terraform-course-security-group"
  description = "ssh access"
  vpc_id      = aws_vpc.vpc.id
  tags = merge(var.tags, {
    Name = "terraform-course-security-group"
  })
}

resource "aws_vpc_security_group_ingress_rule" "security_group_ingress_rule" {
  security_group_id = aws_security_group.security_group.id

  cidr_ipv4   = var.my_public_ip
  from_port   = 22
  ip_protocol = "tcp"
  to_port     = 22
  description = "Allow SSH from my public IP"
}





