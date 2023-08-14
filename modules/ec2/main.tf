/*==== The EC2 ======*/
resource "aws_instance" "trainee-instance" {
  ami                     = var.instance_ami
  instance_type           = var.instance_type
  count                   = var.instance_count

  key_name = var.key_name
  user_data = file("userdata.tpl")

  root_block_device {
    volume_size = var.instance_volume_size
  }

  tags = {
    Name        = "${var.author}-${var.project}-${var.trainee-instance[count.index]}"
  }
}
