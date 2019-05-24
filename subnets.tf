# public subnet #1 
resource "aws_subnet" "public_1" {
  cidr_block = "10.0.1.0/24"
  vpc_id = "${aws_vpc.project.id}"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true

  tags {
    Name = "Pub #1"
    Visibility = "Public"
  }
}

# public subnet #2 
resource "aws_subnet" "public_2" {
  cidr_block = "10.0.2.0/24"
  vpc_id = "${aws_vpc.project.id}"
  availability_zone = "us-east-1c"
  map_public_ip_on_launch = true

  tags {
    Name = "Pub #2"
    Visibility = "Public"
  }
}

# public subnet #3
resource "aws_subnet" "public_3" {
  cidr_block = "10.0.3.0/24"
  vpc_id = "${aws_vpc.project.id}"
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = true
  
  tags {
    Name = "Pub #3"
    Visibility = "Public"
  }
}

# private subnet #1 for RDS
resource "aws_subnet" "private_rds_1" {
  count = "${var.rds ? 1 : 0 }"
  cidr_block = "10.0.4.0/24"
  vpc_id = "${aws_vpc.project.id}"
  availability_zone = "us-east-1a"

  tags {
    Name = "RDS #1"
    Visibility = "Private"
  }
}

# private subnet #2 for RDS
resource "aws_subnet" "private_rds_2" {
  count = "${var.rds ? 1 : 0 }"
  cidr_block = "10.0.5.0/24"
  vpc_id = "${aws_vpc.project.id}"
  availability_zone = "us-east-1b"

  tags {
    Name = "RDS #2"
    Visibility = "Private"
  }
}

# private subnet #1
resource "aws_subnet" "private_1" {
  cidr_block = "10.0.6.0/24"
  vpc_id = "${aws_vpc.project.id}"
  availability_zone = "us-east-1a"

  tags {
    Name = "Private #1"
    Visibility = "Private"
  }
}

# private subnet #2
resource "aws_subnet" "private_2" {
  count = "${var.multi_az ? 1 : 0}"

  cidr_block = "10.0.7.0/24"
  vpc_id = "${aws_vpc.project.id}"
  availability_zone = "us-east-1b"

  tags {
    Name = "Private #2"
    Visibility = "Private"
  }
}

# private subnet #3
resource "aws_subnet" "private_3" {
  count = "${var.multi_az ? 1 : 0}"

  cidr_block = "10.0.8.0/24"
  vpc_id = "${aws_vpc.project.id}"
  availability_zone = "us-east-1c"

  tags {
    Name = "Private #3"
    Visibility = "Private"
  }
}

