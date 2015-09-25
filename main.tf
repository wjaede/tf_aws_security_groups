module "icmp" {
	source = "git@github.com:wjaede/tf_sg_icmp.git"
	vpc_id = "${var.vpc_id}"
}
