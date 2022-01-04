# Creating GE bastian server.
resource "aws_instance" "ge_bastian" {
  Name = "${var.prefix}-ge-vm"
  ami = data.aws_ami.ubuntu.id
  instance_type = "${var.instance_type}"

  tags {
      Name = "${var.prefix}-ge-bastian"
  }
}