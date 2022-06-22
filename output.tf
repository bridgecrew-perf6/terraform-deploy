output "apache-server-address" {
  value = aws_elb.web.dns_name
}
