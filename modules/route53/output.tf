output "aws_route53_zone" {
  value = aws_route53_zone.trainee_zone.name
}

output "aws_route53_record" {
  value = aws_route53_record.trainee_record.name
}
