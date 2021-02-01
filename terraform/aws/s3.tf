resource "aws_s3_bucket" "data" {
  # bucket is public
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning
  bucket = "${local.resource_prefix.value}-data-mor4"
  acl = "private"
  force_destroy = true
  tags = {
    Name = "${local.resource_prefix.value}-data-mor4"
    Environment = local.resource_prefix.value
  }
}

resource "aws_s3_bucket" "data2" {
  # bucket is public
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning
  bucket = "${local.resource_prefix.value}-data-mor5"
  acl = "private"
  force_destroy = true
  tags = {
    Name = "${local.resource_prefix.value}-data-mor5"
    Environment = local.resource_prefix.value
  }
}

resource "aws_s3_bucket" "financials" {
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning
  bucket        = "${local.resource_prefix.value}-financials-test-mor4"
  acl           = "private"
  force_destroy = true
  tags = {
    Name        = "${local.resource_prefix.value}-financials-test-mor4"
    Environment = local.resource_prefix.value
  }

}
