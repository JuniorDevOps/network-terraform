# allow internet access to nat #1
resource "aws_route_table" "public_rt" {
  vpc_id = "${aws_vpc.production-vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.igw.id}"
  }

  tags {
    Name = "Public net #1 to Internet"
  }
}
resource "aws_route_table_association" "public_rt_assoc" {
  route_table_id = "${aws_route_table.public_rt.id}"
  subnet_id      = "${aws_subnet.public_1.id}"
}

resource "aws_route_table_association" "public_rt_assoc" {
  route_table_id = "${aws_route_table.public_rt.id}"
  subnet_id      = "${aws_subnet.public_2.id}"
}

resource "aws_route_table_association" "public_rt_assoc" {
  route_table_id = "${aws_route_table.public_rt.id}"
  subnet_id      = "${aws_subnet.public_3.id}"
}