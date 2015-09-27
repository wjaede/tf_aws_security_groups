#output "sg_ssh_id" {
#  value = "${aws_security_group.ssh.id}"
#}
#
#output "sg_http_id" {
#  value = "${aws_security_group.http.id}"
#}
#
#output "sg_icmp_id" {
#  value = "${aws_security_group.icmp.id}"
#}
#
#output "sg_ovpn_id" {
#  value = "${aws_security_group.ovpn.id}"
#}
#
#output "sg_internal_id" {
#  value = "${aws_security_group.internal.id}"
#}

output "private_id" {
  value = "${aws_security_group.private.id}"
}

output "public_id" {
  value = "${aws_security_group.public.id}"
}
output "http_id" {
  value = "${aws_security_group.http.id}"
}