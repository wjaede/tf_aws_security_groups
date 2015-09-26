<<<<<<< HEAD
=======
#/* Default security group */
#resource "aws_security_group" "internal" {
#  name = "security-group-internal"
#  description = "Default security group that allows inbound and outbound traffic from all instances in the VPC"
#  vpc_id = "${var.vpc_id}"
#
#  ingress {
#    from_port   = "0"
#    to_port     = "0"
#    protocol    = "-1"
#    self        = true
#  }
#
#  egress {
#    from_port   = "0"
#    to_port     = "0"
#    protocol    = "-1"
#    self        = true
#  }
#
#  tags {
#	Name = "sg-internal"
#  }
#}
#
#/* Default security group */
#resource "aws_security_group" "icmp" {
#  name = "security-group-icmp"
#  description = "Default security group that allows inbound and outbound traffic from all instances in the VPC"
#  vpc_id = "${var.vpc_id}"
#
#  ingress {
#    from_port = -1
#    to_port   = -1
#    protocol  = "icmp"
#    cidr_blocks = ["0.0.0.0/0"]
#  }
#
#  egress {
#    from_port = -1
#    to_port   = -1
#    protocol  = "icmp"
#    cidr_blocks = ["0.0.0.0/0"]
#  }
#
#  tags {
#	Name = "sg-icmp"
#  }
#}
#/* Security group */
#resource "aws_security_group" "ovpn" {
#  name = "security-group-ovpn"
#  description = "Security group for nat instances that allows VPN connections from internet."
#  vpc_id = "${var.vpc_id}"
#
#  ingress {
#    from_port = 22
#    to_port   = 22
#    protocol  = "tcp"
#    cidr_blocks = ["0.0.0.0/0"]
#  }
#
#  ingress {
#    from_port = -1
#    to_port   = -1
#    protocol  = "icmp"
#    cidr_blocks = ["0.0.0.0/0"]
#  }
#
#  egress {
#    from_port = -1
#    to_port   = -1
#    protocol  = "icmp"
#    cidr_blocks = ["0.0.0.0/0"]
#  }
#
#  ingress {
#    from_port = 1194
#    to_port   = 1194
#    protocol  = "udp"
#    cidr_blocks = ["0.0.0.0/0"]
#  }
#
#  tags {
#	Name = "sg-ovpn"
#  }
#}
#
#/* Security group */
#resource "aws_security_group" "ssh" {
#  name = "security-group-ssh"
#  description = "Security group for nat instances that allows SSH traffic"
#  vpc_id = "${var.vpc_id}"
#
#  ingress {
#	from_port = 22
#	to_port   = 22
#	protocol  = "tcp"
#	cidr_blocks = ["0.0.0.0/0"]
#  }
#  /*
#  egress {
#	from_port = 22
#	to_port   = 22
#	protocol  = "tcp"
#	cidr_blocks = ["0.0.0.0/0"]
#  }
#  */
#  tags {
#	Name = "sg-ssh"
#  }
#}
#
#/* Security group */
#resource "aws_security_group" "http" {
#  name = "security-group-http"
#  description = "Security group for nat instances that allows HTTP(s) traffic"
#  vpc_id = "${var.vpc_id}"
#
#  ingress {
#	from_port = 80
#	to_port   = 80
#	protocol  = "tcp"
#	cidr_blocks = ["0.0.0.0/0"]
#  }
#
#  egress {
#	from_port = 80
#	to_port   = 80
#	protocol  = "tcp"
#	cidr_blocks = ["0.0.0.0/0"]
#  }
#
#  ingress {
#	from_port = 443
#	to_port   = 443
#	protocol  = "tcp"
#	cidr_blocks = ["0.0.0.0/0"]
#  }
#
#  egress {
#	from_port = 443
#	to_port   = 443
#	protocol  = "tcp"
#	cidr_blocks = ["0.0.0.0/0"]
#  }
#
#  tags {
#	Name = "sg-http"
#  }
#}

>>>>>>> namespache changed
/* Default security group */
resource "aws_security_group" "internal" {
  name = "security-group-internal"
  description = "Default security group that allows inbound and outbound traffic from all instances in the VPC"
  vpc_id = "${var.vpc_id}"

  ingress {
<<<<<<< HEAD
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
	Name = "sg-internal"
  }
}

/* Default security group */
resource "aws_security_group" "icmp" {
  name = "security-group-icmp"
  description = "Default security group that allows inbound and outbound traffic from all instances in the VPC"
  vpc_id = "${var.vpc_id}"

  ingress {
	from_port   = "0"
	to_port     = "0"
	protocol    = "icmp"
  }

  egress {
	from_port   = "0"
	to_port     = "0"
	protocol    = "icmp"
  }

  tags {
	Name = "sg-icmp"
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

=======
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
    Name = "sg-internal"
  }
}

/* Security group for the nat server */
resource "aws_security_group" "public" {
  name = "security-group-public"
  description = "Security group for nat instances that allows SSH and VPN traffic from internet. Also allows outbound HTTP[S]"
  vpc_id = "${var.vpc_id}"

  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = -1
    to_port   = -1
    protocol  = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = -1
    to_port   = -1
    protocol  = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 1194
    to_port   = 1194
    protocol  = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 80
    to_port   = 80
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
    Name = "sg-public"
  }
}
>>>>>>> namespache changed
