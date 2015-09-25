/* Default security group */
resource "aws_security_group" "internal" {
  name = "security-group-internal"
  description = "Default security group that allows inbound and outbound traffic from all instances in the VPC"
  vpc_id = "${var.vpc_id}"

  ingress {
	from_port   = "0"
	to_port     = "0"
	protocol    = "-1"
	self        = true
  }

  egress {
	from_port   = "0"
	to_port     = "0"
	protocol    = "-1"
	self        = true
  }

  tags {
	Name = "sg-default"
  }
}

/* Security group */
resource "aws_security_group" "ovpn" {
  name = "security-group-ovpn"
  description = "Security group for nat instances that allows VPN connections from internet."
  vpc_id = "${var.vpc_id}"

  ingress {
	from_port = 1194
	to_port   = 1194
	protocol  = "udp"
	cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
	Name = "sg-ovpn"
  }
}

/* Default security group */
resource "aws_security_group" "default" {
  name = "security-group-default"
  description = "Default security group that allows inbound and outbound traffic from all instances in the VPC"
  vpc_id = "${var.vpc_id}"

  ingress {
	from_port   = "0"
	to_port     = "0"
	protocol    = "-1"
	self        = true
  }

  egress {
	from_port   = "0"
	to_port     = "0"
	protocol    = "-1"
	self        = true
  }

  tags {
	Name = "sg-default"
  }
}

/* Security group */
resource "aws_security_group" "ssh" {
  name = "security-group-ssh"
  description = "Security group for nat instances that allows SSH traffic"
  vpc_id = "${var.vpc_id}"

  ingress {
	from_port = 22
	to_port   = 22
	protocol  = "tcp"
	cidr_blocks = ["0.0.0.0/0"]
  }
  /*
  egress {
	from_port = 22
	to_port   = 22
	protocol  = "tcp"
	cidr_blocks = ["0.0.0.0/0"]
  }
  */
  tags {
	Name = "sg-ssh"
  }
}

/* Security group */
resource "aws_security_group" "http" {
  name = "security-group-http"
  description = "Security group for nat instances that allows HTTP(s) traffic"
  vpc_id = "${var.vpc_id}"

  ingress {
	from_port = 80
	to_port   = 80
	protocol  = "tcp"
	cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
	from_port = 80
	to_port   = 80
	protocol  = "tcp"
	cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
	from_port = 443
	to_port   = 443
	protocol  = "tcp"
	cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
	from_port = 443
	to_port   = 443
	protocol  = "tcp"
	cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
	Name = "sg-http"
  }
}
