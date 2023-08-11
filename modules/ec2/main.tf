/*==== The EC2 ======*/
resource "aws_instance" "trainee-instance" {
  ami                     = "ami-0df7a207adb9748c7"
  instance_type           = "t2.micro"
  count                   = 2

  key_name = var.key_name
  user_data = file("userdata.tpl")

  root_block_device {
    volume_size = 8
  }

  tags = {
    Name        = "${var.author}-${var.project}-${var.trainee-instance[count.index]}"
  }
}
