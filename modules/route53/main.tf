/*==== The ROUTE ======*/
resource "aws_route53_zone" "trainee_zone" {
  name     = "trainee.devops.nfq.asia"
}

resource "aws_route53_record" "trainee_record" {
  allow_overwrite = true
  name            = "trainee.devops.nfq.asia"
  ttl             = 3600
  type            = "NS"
  zone_id         = aws_route53_zone.trainee_zone.zone_id

  records = aws_route53_zone.trainee_zone.name_servers
}
