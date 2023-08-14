/*==== The S3 ======*/
resource "aws_s3_bucket" "tf-trainee-s3" {
  bucket = "tf-trainee-s3"
}

# resource "aws_s3_bucket_policy" "s3_policy" {
#   bucket = aws_s3_bucket.tf-trainee-s3.id
#   policy = data.aws_iam_policy_document.s3_policy.json
# }

# data "aws_iam_policy_document" "s3_policy" {
#   statement {
#     principals {
# 	  type        = "AWS"
# 	  identifiers = ["*"]
# 	}

#     actions = [
#       "s3:GetObject",
#       "s3:ListBucket",
#     ]

#     resources = [
#       aws_s3_bucket.tf-trainee-s3.arn,
#       "${aws_s3_bucket.tf-trainee-s3.arn}/*",
#     ]
#   }
# }
