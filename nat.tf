# Nat gateway #1
resource "aws_eip" "eip_1" {
  vpc = true
  depends_on = ["aws_internet_gateway.igw.id"]
}
resource "aws_nat_gateway" "nat_1" {
  allocation_id = "${aws_eip.eip_1.id}"
  subnet_id = "${aws_subnet.public_1.id}"
}