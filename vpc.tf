resource "aws_vpc" "production-vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   =  true
  tags {
    Name = "${var.project}"
  }
}
resource "aws_internet_gateway" "igw" {
  vpc_id = "${aws_vpc.production-vpc.id}"
   tags {
        Name = "InternetGateway"
    }
}