resource "aws_ses_receipt_rule_set" "main" {
  rule_set_name = "admin-to-sns-primary-rules"
}

resource "aws_ses_active_receipt_rule_set" "main" {
  rule_set_name = aws_ses_receipt_rule_set.main.rule_set_name
}

resource "aws_ses_receipt_rule" "admin_sns" {
  for_each      = toset(var.email_domains)
  name          = "${replace(each.value, ".", "-")}-admin-to-sns"
  rule_set_name = aws_ses_receipt_rule_set.main.id
  recipients    = ["admin@${each.value}"]
  enabled       = true
  scan_enabled  = true

  sns_action {
    topic_arn = aws_sns_topic.incoming_email.arn
    position  = 1
  }
}
