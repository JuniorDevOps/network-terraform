output "subnet_public_1" {
  value = "${aws_subnet.public_1.id}"
}
output "subnet_public_2" {
  value = "${aws_subnet.public_2.id}"
}
output "subnet_public_3" {
  value = "${aws_subnet.public_3.id}"
}
output "subnet_private_1" {
  value = "${aws_subnet.private_1.id}"
}
output "subnet_private_2" {
  value = "${aws_subnet.private_2.id}"
}
output "subnet_private_3" {
  value = "${aws_subnet.private_3.id}"
}
output "subnet_rds_1" {
  value = "${aws_subnet.private_rds_1.id}"
}
output "subnet_rds_1" {
  value = "${aws_subnet.private_rds_2.id}"
}
output "db_subnet_group" {
  value = "${aws_db_subnet_group.default.id}"
}
output "nat_gw_ip_1" {
  value = "${aws_eip.eip_1.public_ip}"
}

output "nat_gw" {
  value = "${aws_nat_gateway.nat_1.id}"
}

output "vpc_id" {
  value = "${aws_vpc.production-vpc.id}"
}
output "default_security_group" {
  value = "${aws_vpc.production-vpc.default_security_group_id}"
}

output "default_route_table_id" {
  value = "${aws_vpc.production-vpc.default_route_table_id}"
}
