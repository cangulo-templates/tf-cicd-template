# locals {
#   buckets = {
#     main = {
#       bucket = "${local.resources_prefix}-data"
#     }
#   }
# }

# resource "aws_s3_bucket" "this" {
#   for_each = local.buckets

#   bucket = each.value.bucket
# }
