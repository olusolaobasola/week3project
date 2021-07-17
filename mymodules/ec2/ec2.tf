resource "aws_instance" "ec2_provision" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  count         = var.instance_count
  availability_zone = var.availability_zone

 tags = {
    Name = "${var.name}-${count.index + 1}"
  }
}




