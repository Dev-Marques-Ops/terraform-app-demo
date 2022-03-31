resource "aws_acm_certificate" "certificate" {
  domain_name       = "*.${data.aws_route53_zone.domain.name}"
  validation_method = "DNS"

  subject_alternative_names = var.subject_alternative_names

  lifecycle {
    create_before_destroy = true
  }

  tags = merge({Name = "${var.prefix_name}-acm_certificate"},
                var.tags)
}

resource "aws_route53_record" "cert-record" {
  count = (length(var.subject_alternative_names ) +1)

  name    = tolist(aws_acm_certificate.certificate.domain_validation_options)[count.index].resource_record_name
  type    = tolist(aws_acm_certificate.certificate.domain_validation_options)[count.index].resource_record_type
  records = [tolist(aws_acm_certificate.certificate.domain_validation_options)[count.index].resource_record_value]

  zone_id = data.aws_route53_zone.domain.id
  ttl     = 60
}

resource "aws_route53_record" "domain-record" {
  count = length(var.subdomain_names)

  zone_id = data.aws_route53_zone.domain.zone_id
  name    = "${var.subdomain_names[count.index]}.${data.aws_route53_zone.domain.name}"
  type    = "A"

  alias {
    name                    = var.alias.dns_name
    zone_id                 = var.alias.zone_id
    evaluate_target_health  = true
  }
}

resource "aws_acm_certificate_validation" "validation" {
  certificate_arn         = aws_acm_certificate.certificate.arn
  validation_record_fqdns = [for record in aws_route53_record.cert-record: record.name]
}