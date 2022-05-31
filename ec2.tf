# Creating 1st EC2 instance in Public Subnet
resource "aws_instance" "attachment" {
  ami                         = "ami-087c17d1fe0178315"
  instance_type               = "t2.small"
  count                       = 1
  key_name                    = "${var.keyname}"
  vpc_security_group_ids      = ["${aws_security_group.demosg.id}"]
  subnet_id                   = "${aws_subnet.public-subnet-1.id}"
  associate_public_ip_address = true
  user_data                   = "${file("data.sh")}"

  tags = {
    Name = "My Public Instance"
  }
}

# Creating 2nd EC2 instance in Public Subnet
resource "aws_instance" "attachment1" {
  ami                         = "ami-087c17d1fe0178315"
  instance_type               = "t2.small"
  count                       = 1
  key_name                    = "Apollo"
  vpc_security_group_ids      = ["${aws_security_group.demosg.id}"]
  subnet_id                   = "${aws_subnet.public-subnet-1.id}"
  associate_public_ip_address = true
  user_data                   = "${file("data.sh")}"

  tags = {
    Name = "My Public Instance 2"
  }
}
