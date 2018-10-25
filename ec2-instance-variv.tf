resource "aws_instance" "testing" {
  count = "${var.instance_count}"

  ami = "${var.ami}"

  instance_type = "${var.instance_type}"

  key_name = "test"

  user_data = "${file("master.sh")}"

  tags {
    Name = "Terraform-${count.index + 1}"
  }
}

output "ip" {
  value = "${aws_instance.testing.*.public_ip}"
}