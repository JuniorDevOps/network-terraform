# allow internet access to Application nodes through nat #1
resource "aws_default_route_table" "private_rt" {
  vpc_id = "${aws_vpc.production-vpc.id}"

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "${aws_nat_gateway.nat_1.id}"
  }

  tags {
    Name = "Application to Internet through Nat #1 Default RT"
  }
}