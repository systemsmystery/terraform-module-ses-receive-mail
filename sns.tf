resource "aws_sns_topic" "incoming_email" {
  #checkov:skip=CKV_AWS_26
  name = var.sns_topic_name
}

resource "aws_sns_topic_subscription" "incoming_email" {
  topic_arn = aws_sns_topic.incoming_email.arn
  protocol  = var.sns_sub_protocol
  endpoint  = var.sns_sub_endpoint
}
