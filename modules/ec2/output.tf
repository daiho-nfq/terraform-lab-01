output "instance_id" {
  value = aws_instance.trainee-instance.*.id
}

output "instance_public_dns" {
  value = aws_instance.trainee-instance.*.public_dns
}
