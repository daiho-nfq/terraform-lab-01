/*==== The ROUTE ======*/
resource "aws_route53_zone" "trainee_zone" {
  name     = var.aws_route53_zone_name
}

resource "aws_route53_record" "trainee_record" {
  allow_overwrite = true
  name            = var.aws_route53_zone_name
  ttl             = 3600
  type            = "NS"
  zone_id         = aws_route53_zone.trainee_zone.zone_id

  records = aws_route53_zone.trainee_zone.name_servers
}
